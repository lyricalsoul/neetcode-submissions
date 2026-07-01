#[derive(Default)]
struct PrefixTree {
    branches: [Option<Box<PrefixTree>>; 26],
    word: bool,
}

impl PrefixTree {
    pub fn new() -> Self {
        Self::default()
    }

    pub fn insert(&mut self, word: String) {
        let mut cur = self;
        for b in word.bytes() {
            let idx = Self::byte_for(b);
            
            cur = cur.branches[idx]
                .get_or_insert_with(|| Box::new(PrefixTree::new()));
        }
        cur.word = true;
    }

    pub fn search(&self, word: String) -> bool {
        let mut cur = self;
        for b in word.bytes() {
            let idx = Self::byte_for(b);
            
            if let Some(ref next_node) = cur.branches[idx] {
                cur = next_node;
            } else {
                return false;
            }
        }
        cur.word
    }

    pub fn starts_with(&self, prefix: String) -> bool {
        let mut cur = self;
        for b in prefix.bytes() {
            let idx = Self::byte_for(b);
            
            if let Some(ref next_node) = cur.branches[idx] {
                cur = next_node;
            } else {
                return false;
            }
        }
        true
    }

    fn byte_for(ch: u8) -> usize {
        (ch - b'a').into()
    }
}
