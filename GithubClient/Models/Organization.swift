import Foundation

/*
 "login": "UntoThisLast",
 "id": 3043,
 "node_id": "MDEyOk9yZ2FuaXphdGlvbjMwNDM=",
 "url": "https://api.github.com/orgs/UntoThisLast",
 "repos_url": "https://api.github.com/orgs/UntoThisLast/repos",
 "events_url": "https://api.github.com/orgs/UntoThisLast/events",
 "hooks_url": "https://api.github.com/orgs/UntoThisLast/hooks",
 "issues_url": "https://api.github.com/orgs/UntoThisLast/issues",
 "members_url": "https://api.github.com/orgs/UntoThisLast/members{/member}",
 "public_members_url": "https://api.github.com/orgs/UntoThisLast/public_members{/member}",
 "avatar_url": "https://avatars.githubusercontent.com/u/3043?v=4",
 "description": null
 */

struct Organization: Decodable
{
    var login: String
    var reposUrl: URL
    var avatarUrl: URL
    var description: String?

    enum OrganizationKeys: String, CodingKey
    {
        case reposUrl = "repos_url"
        case avatarsUrl = "avatars_url"
    }
    
}
