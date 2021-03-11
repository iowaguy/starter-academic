[![Netlify
Status](https://api.netlify.com/api/v1/badges/383c111d-f57f-4f9b-ae9a-bb7118a5aa58/deploy-status)](https://app.netlify.com/sites/optimistic-knuth-570ee6/deploys)

# Things I Want to Remember

## Updating Personal Information
- Personal information is in `config/_default/params.toml` and `content/authors/admin/_index.md`
- Avatar is in `content/authors/admin/avatar.png`

## Updating Publications
This is how to update publications. Before running this command, export
publications from Zotero in BibTex format into `~/Downloads/mypubs.bib`
``` shell
academic import --bibtex ~/Downloads/mypubs.bib
```

## Adding a talk
``` shell
hugo new --kind talk talk/mit-sec-sem-exploiting-centrality
```

## Run site locally

``` shell
hugo server
```

## Updating headers
Section text is in `content/.../_index.md`.

## Useful links
- [**Netlify stuff**](https://app.netlify.com/sites/optimistic-knuth-570ee6/settings/domain)
- 👉 [**Get Started**](https://wowchemy.com/docs/install/)
- 📚 [**Documentation**](https://wowchemy.com/docs/)
- Go
  [here](https://github.com/wowchemy/wowchemy-hugo-modules/tree/master/wowchemy)
  for updating layout html
