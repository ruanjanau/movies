# comando para rodar o build_runner
# make mobx
mobx:
	@fvm flutter pub run build_runner watch --delete-conflicting-outputs

# comando para limpar e depois carregar o projeto
# make clean
clean:
	@fvm flutter clean && fvm flutter pub get




