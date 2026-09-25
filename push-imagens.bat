@echo off
rem Push das originais/_big do leilao p/ o GitHub Pages (imagens.leilaocarvalhorocha.com.br)
rem Rodar com duplo clique depois de exportar as fotos para a pasta do mes.
cd /d "%~dp0"
git add -A
git diff --cached --quiet && (echo Nada para enviar. & goto fim)
git commit -m "originais %DATE% %TIME%"
git push
:fim
pause
