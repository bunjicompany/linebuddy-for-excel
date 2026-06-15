# オープンソース公開チェックリスト

GitHubなどで公開する前に確認すること。

## 公開前

- [ ] `README.md` の内容が最新仕様と合っている
- [ ] `LICENSE` が入っている
- [ ] `settings.json` が公開対象に入っていない
- [ ] `.venv/`, `build/`, `__pycache__/` が公開対象に入っていない
- [ ] ローカルパス、ユーザー名、個人情報が含まれていない
- [ ] 配布するexeのバージョンが最新になっている
- [ ] 配布ページのダウンロードリンクが意図したexeを指している

## GitHubで公開する場合

1. GitHubで新しいリポジトリを作成する
2. ローカルで初回コミットを作る
3. GitHubのリモートURLを追加する
4. `main` ブランチをpushする
5. 必要なら GitHub Releases に `ItsumonoKaigyoForExcel.exe` を添付する

例:

```powershell
git add .
git commit -m "Initial open source release"
git branch -M main
git remote add origin https://github.com/USER/REPOSITORY.git
git push -u origin main
```

## exeの扱い

`dist/ItsumonoKaigyoForExcel.exe` をリポジトリに含めることもできますが、一般的には GitHub Releases に置く方が管理しやすいです。

配布ページを GitHub Pages で公開する場合は、ダウンロードリンクを Releases のURLに変更するか、`dist/` にexeを含めたまま公開するかを決めてください。
