Template.home.events
    'click button#alertSuccess': ->
        b3.alertSuccess "I don't go away until you close me."

    'click button#flashError': ->
        b3.flashError 'I flash for a few seconds'

    'click button#topLeft': ->
        b3.flashWarn 'text-topLeft', { region: 'topLeft' }

    'click button#topCenter': ->
        b3.flashInfo 'text-topCenter', { region: 'topCenter' }

    'click button#topRight': ->
        b3.flashError 'topRight', { region: 'topRight' }

    'click button#middleLeft': ->
        b3.flashInfo 'middleLeft', { region: 'middleLeft' }

    'click button#middleCenter': ->
        b3.flashSuccess 'text-middleCenter', { region: 'middleCenter' }

    'click button#middleRight': ->
        b3.flashWarn 'middleRight', { region: 'middleRight' }

    'click button#bottomLeft': ->
        b3.flashError 'bottomLeft', { region: 'bottomLeft' }

    'click button#bottomCenter': ->
        b3.flashWarn 'bottomCenter', { region: 'bottomCenter' }

    'click button#bottomRight': ->
        b3.flashInfo 'bottomRight', { region: 'bottomRight' }

    'click button#dialog': ->
        b3.Prompt {
            text: ' What is your name?'
            dialog: true
            confirmation: true
            buttonText: ' say Hi.'
            type: 'info'
            inputType: 'text'
            selectClass: 'hello'
            header: 'Hi!'
            label: 'My name is helplessb3.'
            placeholder: 'Well, what other secrets are there?'
            icon: 'glyphicon glyphicon-thumbs-up'
        }
    'click button#videoModal': ->
        vI = {
            poster: '/MenInBlack3.png'
            src: 'http://www.mp4point.com/downloads/2530783c8c00.mp4'
        }
        b3.videoModal @, vI

name = ""
Template.b3Prompt.events
    'keyup input.hello': ( e, t )->
        name = e.target.value
        b3.flashError "I don't know you ... "+name, { single: 'me' }

    'click button.hello': ( e, t ) ->
        b3.flashSuccess 'Oh hey there :) '+name+', i forget names.', {
            single: 'me'
            type: 'success'
        }


