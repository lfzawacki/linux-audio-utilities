# linux-audio-utilities

Alguns scripts eu uso para configurar o meu laptop para gravação de áudio com baixa latência no Linux (mint). O objetivo é configurar uma latência baixa o suficiente e ao mesmo tempo evitar XRUNs (os glitches de áudio que acontecem quando o procedor não dá conta de todo o trabalho de áudio no tempo necessário)

## Scripts

Este scripts são adaptados ao trabalho que eu faço, então você talvez tenha que lê-los e adaptar para se encaixar aos seus usos.

* **stop-for-audio** : Fecha uma penca de serviços do sistema e remove alguns módulos do kernel que são responsáveis por causar interrupções e picos de processamento durante a gravação.
* **back-from-audio**: Traz de volta os programas que são fechados pelo script anterior.
* **stop-for-stream** and **back-from-stream**: O mesmo que os scripts acima, porém mantém a conexão à internet ativa para que seja possível fazer transmissões (via Twitch.tv ou Youtube por exemplo) com áudio de baixa latência.
* **cpu-boost**: Não é mais usado - veja o próximo script para entender a razão - mas você pode ajustar este script para forçar o seu processador a usar uma frequência mais rápida (para mais poder de processamento) ou mais lenta (para economizar energia). Isto normalmente não é necessário com o serviço de ajuste de CPU do Linux, mas este pode causar XRUNs quando se usar áudio de baixa latência.
* **unlock-cpu**: Este computador que eu uso tem uma [configuração da BIOS bem sacana](https://askubuntu.com/questions/303882/maximum-cpu-frequency-stuck-at-low-value) que faz com que o Linux limite o poder de processamento máximo que ele pode usar. Este script desativa essa "feature", mas eu não preciso rodar ele diretamente porque isto pode ser desativado no boot com uma configuração (veja a pergunta do SO linkada acima). Esta configuração também invalida o script anterior.
* **jack-after-startup**: Este e o próximo script podem ser configurados para rodar junto ao qjacktl depois do servidor JACK ser iniciado ou fechado. Eu não faço muito no iniciar, apenas iniciar o a2jmidid para melhor compatibilidade com dispositivos MIDI.
* **jack-after-shutdown**: Aqui eu apenas fecho tudo com relação ao JACK e o a2jmidid

## Dicas extras

* Use o [realtimeconfigquickscan](https://github.com/raboof/realtimeconfigquickscan) e siga as dicas para configurar o áudio de baixa latência.
* Widgets de área de trabalho ou da barra de ferramentas que se atualizam constantemente (clima, notícias, sensores de temperatura, frequência de processador, etc...) podem causar XRUNs então não os mantenha ativos quando estiver gravando com seu computador.
* Eu recomendo usar o [KXStudio](http://kxstudio.linuxaudio.org/) e especialmente o Cadence para ajudar a configurar o servidor JACK, principalmente se você precisa interoperar o JACK com Pulseaudio.
