SitusGacorDepositPulsaTanpaPotonganAgenBoTerpercaya = require '../lib/situs-gacor-deposit-pulsa-tanpa-potongan-agen-bo-terpercaya'

# Use the command `window:run-package-specs` (cmd-alt-ctrl-p) to run specs.
#
# To run a specific `it` or `describe` block add an `f` to the front (e.g. `fit`
# or `fdescribe`). Remove the `f` to unfocus the block.

describe "SitusGacorDepositPulsaTanpaPotonganAgenBoTerpercaya", ->
  [workspaceElement, activationPromise] = []

  beforeEach ->
    workspaceElement = atom.views.getView(atom.workspace)
    activationPromise = atom.packages.activatePackage('situs-gacor-deposit-pulsa-tanpa-potongan-agen-bo-terpercaya')

  describe "when the situs-gacor-deposit-pulsa-tanpa-potongan-agen-bo-terpercaya:toggle event is triggered", ->
    it "hides and shows the modal panel", ->
      # Before the activation event the view is not on the DOM, and no panel
      # has been created
      expect(workspaceElement.querySelector('.situs-gacor-deposit-pulsa-tanpa-potongan-agen-bo-terpercaya')).not.toExist()

      # This is an activation event, triggering it will cause the package to be
      # activated.
      atom.commands.dispatch workspaceElement, 'situs-gacor-deposit-pulsa-tanpa-potongan-agen-bo-terpercaya:toggle'

      waitsForPromise ->
        activationPromise

      runs ->
        expect(workspaceElement.querySelector('.situs-gacor-deposit-pulsa-tanpa-potongan-agen-bo-terpercaya')).toExist()

        situsGacorDepositPulsaTanpaPotonganAgenBoTerpercayaElement = workspaceElement.querySelector('.situs-gacor-deposit-pulsa-tanpa-potongan-agen-bo-terpercaya')
        expect(situsGacorDepositPulsaTanpaPotonganAgenBoTerpercayaElement).toExist()

        situsGacorDepositPulsaTanpaPotonganAgenBoTerpercayaPanel = atom.workspace.panelForItem(situsGacorDepositPulsaTanpaPotonganAgenBoTerpercayaElement)
        expect(situsGacorDepositPulsaTanpaPotonganAgenBoTerpercayaPanel.isVisible()).toBe true
        atom.commands.dispatch workspaceElement, 'situs-gacor-deposit-pulsa-tanpa-potongan-agen-bo-terpercaya:toggle'
        expect(situsGacorDepositPulsaTanpaPotonganAgenBoTerpercayaPanel.isVisible()).toBe false

    it "hides and shows the view", ->
      # This test shows you an integration test testing at the view level.

      # Attaching the workspaceElement to the DOM is required to allow the
      # `toBeVisible()` matchers to work. Anything testing visibility or focus
      # requires that the workspaceElement is on the DOM. Tests that attach the
      # workspaceElement to the DOM are generally slower than those off DOM.
      jasmine.attachToDOM(workspaceElement)

      expect(workspaceElement.querySelector('.situs-gacor-deposit-pulsa-tanpa-potongan-agen-bo-terpercaya')).not.toExist()

      # This is an activation event, triggering it causes the package to be
      # activated.
      atom.commands.dispatch workspaceElement, 'situs-gacor-deposit-pulsa-tanpa-potongan-agen-bo-terpercaya:toggle'

      waitsForPromise ->
        activationPromise

      runs ->
        # Now we can test for view visibility
        situsGacorDepositPulsaTanpaPotonganAgenBoTerpercayaElement = workspaceElement.querySelector('.situs-gacor-deposit-pulsa-tanpa-potongan-agen-bo-terpercaya')
        expect(situsGacorDepositPulsaTanpaPotonganAgenBoTerpercayaElement).toBeVisible()
        atom.commands.dispatch workspaceElement, 'situs-gacor-deposit-pulsa-tanpa-potongan-agen-bo-terpercaya:toggle'
        expect(situsGacorDepositPulsaTanpaPotonganAgenBoTerpercayaElement).not.toBeVisible()
