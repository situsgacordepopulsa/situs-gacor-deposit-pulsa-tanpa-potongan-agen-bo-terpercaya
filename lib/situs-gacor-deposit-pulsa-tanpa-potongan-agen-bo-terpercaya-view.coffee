module.exports =
class SitusGacorDepositPulsaTanpaPotonganAgenBoTerpercayaView
  constructor: (serializedState) ->
    # Create root element
    @element = document.createElement('div')
    @element.classList.add('situs-gacor-deposit-pulsa-tanpa-potongan-agen-bo-terpercaya')

    # Create message element
    message = document.createElement('div')
    message.textContent = "The SitusGacorDepositPulsaTanpaPotonganAgenBoTerpercaya package is Alive! It's ALIVE!"
    message.classList.add('message')
    @element.appendChild(message)

  # Returns an object that can be retrieved when package is activated
  serialize: ->

  # Tear down any state and detach
  destroy: ->
    @element.remove()

  getElement: ->
    @element
