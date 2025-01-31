import webpack from 'webpack';
import { RROXPackageJson } from '../types.js';

export function getBaseWebpackConfig( pkg: RROXPackageJson ) {
    return {
        mode: process.env.NODE_ENV === 'development' ? 'development' : 'production',
        module: {
            rules: [
                {
                    // Add support for native node modules
                    test: /\.node$/,
                    use: 'node-loader',
                },
                {
                    // Typescript loader
                    test: /\.tsx?$/,
                    exclude: /(node_modules|\.webpack)/,
                    use: {
                        loader: 'ts-loader',
                        options: {
                            transpileOnly: true,
                        },
                    },
                },
                {
                    // CSS Loader
                    test: /\.css$/,
                    use: [{ loader: 'style-loader' }, { loader: 'css-loader' }],
                },
                {
                    // Lazy Less loader
                    test: /\.lazy.less$/,
                    use: [
                        { loader: 'style-loader', options: { injectType: 'lazyStyleTag' } },
                        { loader: 'css-loader' },
                        { 
                            loader: 'less-loader',
                            options: { 
                                lessOptions: {
                                    javascriptEnabled: true
                                }
                            }
                        },
                    ],
                },
                {
                    // Less loader
                    test: /\.less$/,
                    exclude: /\.lazy.less$/,
                    use: [
                        { loader: 'style-loader' },
                        { loader: 'css-loader' },
                        { 
                            loader: 'less-loader',
                            options: { 
                                lessOptions: {
                                    javascriptEnabled: true
                                }
                            }
                        },
                    ],
                },
                {
                    // SCSS/Sass loader
                    test: /\.(scss|sass)$/,
                    use: [ "style-loader", "css-loader", "sass-loader" ],
                },
                {
                    // Assets loader
                    // More information here https://webpack.js.org/guides/asset-modules/
                    test: /\.(gif|jpe?g|tiff|png|webp|bmp|svg|eot|ttf|woff|woff2|ico)$/i,
                    type: 'asset',
                    generator: {
                        filename: 'assets/[hash][ext][query]',
                    },
                }
            ],
        },
        plugins: [
            new webpack.DefinePlugin( {
                PluginInfo: JSON.stringify({
                    name: pkg.name,
                    version: pkg.version,
                })
            } )
        ],
        resolve: {
            extensions: ['.js', '.ts', '.jsx', '.tsx', '.css', '.json'],
        },
        devtool: process.env.NODE_ENV == 'development' ? 'eval-source-map' : 'source-map',
    };
}