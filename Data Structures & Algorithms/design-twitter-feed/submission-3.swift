class Twitter {
    var following = [Int: Set<Int>]()
    var posts = [(Int, Int)]() // (tweetId, userId)

    init() {}

    func postTweet(_ userId: Int, _ tweetId: Int) {
        posts.insert((tweetId, userId), at: 0)
    }

    func getNewsFeed(_ userId: Int) -> [Int] {
        var result: [Int] = []
        var follows = getFollowingOrCreate(userId)
        follows.insert(userId)

        for (tweetId, authorId) in posts {
            if follows.contains(authorId) {
                result.append(tweetId)
                if result.count == 10 { break }
            }
        }

        return result
    }

    func follow(_ followerId: Int, _ followeeId: Int) {
        var fol = getFollowingOrCreate(followerId)
        fol.insert(followeeId)
        following[followerId] = fol
    }

    func unfollow(_ followerId: Int, _ followeeId: Int) {
        var fol = getFollowingOrCreate(followerId)
        fol.remove(followeeId)
        following[followerId] = fol
    }

    func getFollowingOrCreate(_ id: Int) -> Set<Int> {
        if following[id] == nil {
            following[id] = []
        }
        return following[id]!
    }
}