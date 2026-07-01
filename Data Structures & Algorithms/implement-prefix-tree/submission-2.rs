#[derive(Clone, Copy)]
struct Node {
    branches: [u32; 26],
    word: bool,
}

impl Node {
    fn new() -> Self {
        Self {
            branches: [0; 26],
            word: false,
        }
    }
}

pub struct PrefixTree {
    nodes: Vec<Node>,
}

// at some point: maybe use unsafe to skip arr checks and make this even faster?
impl PrefixTree {
    pub fn new() -> Self {
        let root = Node::new();
        Self { nodes: vec![root, root] }
    }

    pub fn insert(&mut self, word: String) {
        let mut cur_idx = 1;
        for b in word.bytes() {
            let idx = (b - b'a') as usize;
            
            let next_idx = self.nodes[cur_idx].branches[idx];
            if next_idx == 0 {
                let new_node_idx = self.nodes.len() as u32;
                self.nodes.push(Node::new());
                self.nodes[cur_idx].branches[idx] = new_node_idx;
                cur_idx = new_node_idx as usize;
            } else {
                cur_idx = next_idx as usize;
            }
        }
        self.nodes[cur_idx].word = true;
    }

    pub fn search(&self, word: String) -> bool {
        let mut cur_idx = 1;
        for b in word.bytes() {
            let idx = (b - b'a') as usize;
            let next_idx = self.nodes[cur_idx].branches[idx];
            if next_idx == 0 {
                return false;
            }
            cur_idx = next_idx as usize;
        }
        self.nodes[cur_idx].word
    }

    pub fn starts_with(&self, prefix: String) -> bool {
        let mut cur_idx = 1;
        for b in prefix.bytes() {
            let idx = (b - b'a') as usize;
            let next_idx = self.nodes[cur_idx].branches[idx];
            if next_idx == 0 {
                return false;
            }
            cur_idx = next_idx as usize;
        }
        true
    }
}
