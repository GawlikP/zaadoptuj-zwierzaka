const { environment } = require('@rails/webpacker')
const webpack = require('webpack')
enviroment.plugins.prepend('Provide',
    new webpack.ProvidePlugin({
        $: 'jquery/src/jquery',
        jQuery: 'jquery/src/jquery'
    })
)

module.exports = environment
