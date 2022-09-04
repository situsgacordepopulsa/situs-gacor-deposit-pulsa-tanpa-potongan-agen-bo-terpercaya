SitusGacorDepositPulsaTanpaPotonganAgenBoTerpercayaView = require './situs-gacor-deposit-pulsa-tanpa-potongan-agen-bo-terpercaya-view'
{CompositeDisposable} = require 'atom'

module.exports = SitusGacorDepositPulsaTanpaPotonganAgenBoTerpercaya =
  situsGacorDepositPulsaTanpaPotonganAgenBoTerpercayaView: null
  modalPanel: null
  subscriptions: null

  activate: (state) ->
    @situsGacorDepositPulsaTanpaPotonganAgenBoTerpercayaView = new SitusGacorDepositPulsaTanpaPotonganAgenBoTerpercayaView(state.situsGacorDepositPulsaTanpaPotonganAgenBoTerpercayaViewState)
    @modalPanel = atom.workspace.addModalPanel(item: @situsGacorDepositPulsaTanpaPotonganAgenBoTerpercayaView.getElement(), visible: false)

    # Events subscribed to in atom's system can be easily cleaned up with a CompositeDisposable
    @subscriptions = new CompositeDisposable

    # Register command that toggles this view
    @subscriptions.add atom.commands.add 'atom-workspace', 'situs-gacor-deposit-pulsa-tanpa-potongan-agen-bo-terpercaya:toggle': => @toggle()

  deactivate: ->
    @modalPanel.destroy()
    @subscriptions.dispose()
    @situsGacorDepositPulsaTanpaPotonganAgenBoTerpercayaView.destroy()

  serialize: ->
    situsGacorDepositPulsaTanpaPotonganAgenBoTerpercayaViewState: @situsGacorDepositPulsaTanpaPotonganAgenBoTerpercayaView.serialize()

  toggle: ->
    console.log 'SitusGacorDepositPulsaTanpaPotonganAgenBoTerpercaya was toggled!'

    if @modalPanel.isVisible()
      @modalPanel.hide()
    else
      @modalPanel.show()
