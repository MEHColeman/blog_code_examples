# blog_code_examples

**Stack:** Ruby

## What it is

Runnable Ruby examples for posts on blog.mehcoleman.com. Three posts link to
files here by their raw GitHub URL on `master`, so **never move or rename a
linked file**: the link in the post would break.

| Folder | Linked from |
| --- | --- |
| `pry_example/` | Pry (2012-09-28) |
| `ruby_2_7_notes/` | Ruby 2.7 Notes (2020-02-02) |
| `ruby_concurrency/` | Ruby & the Multicore CPU: Part Three – Processes and Threads (2020-04-28) |
| `ruby_self/` | No post links to it |

The posts themselves are written in the Obsidian vault and published by the
`blog` repo; its `docs/publishing.md` describes the process.

## Install

```
git clone git@github.com:MEHColeman/blog_code_examples.git
```

## Run

Each file is a standalone script, for example:

```
ruby ruby_concurrency/fork_example.rb
```

## Test

```
just test
```

Tasks are tracked in GitHub issues (`task-store.sh` in coding_agents). The session journal is `docs/record/journal.md`.
Agent instructions are in `AGENTS.md`; agent orientation is in `docs/seed.md`.
