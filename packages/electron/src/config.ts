import { Cars, SplineType } from '@rrox/types';
import { Options } from 'electron-store';

export const schema = {
    'map.background': {
        type: 'number' as const,
        default: 1,
        maximum: 6,
        minimum: 1,
    },
    'minimap.enabled': {
        type: 'boolean' as const,
        default: true
    },
    'minimap.transparent': {
        type: 'boolean' as const,
        default: true
    },
    'minimap.corner': {
        type: 'number' as const,
        default: 2,
        minimum: 1,
        maximum: 4
    },
    'autosave.enabled': {
        type: 'boolean' as const,
        default: false
    },
    'autosave.slots': {
        type: 'array' as const,
        items: {
            type: 'number' as const,
            default: 10,
            maximum: 10,
            minimum: 1,
        },
        default: [] as const,
    },
    'autosave.lastSlot': {
        type: 'number' as const,
        maximum: 10,
        minimum: 1,
    },
    'autosave.interval': {
        type   : 'number' as const,
        default: 60,
        minimum: 1,
        maximum: 3600
    },
    'minizwerg.enabled': {
        type: 'boolean' as const,
        default: false
    },
    'minizwerg.public': {
        type: 'boolean' as const,
        default: false
    },
    'minizwerg.url': {
        type: 'string' as const,
    },
    'loglevel': {
        type: 'string' as const,
        default: 'info',
        enum: [ 'error', 'warn', 'info', 'verbose', 'debug', 'silly' ]
    },


    [ `colors.${Cars.HANDCAR}`         ]: { type: 'string', default: '#800080' },
    [ `colors.${Cars.PORTER}`          ]: { type: 'string', default: '#800080' },
    [ `colors.${Cars.PORTER2}`         ]: { type: 'string', default: '#800080' },
    [ `colors.${Cars.EUREKA}`          ]: { type: 'string', default: '#800080' },
    [ `colors.${Cars.EUREKA_TENDER}`   ]: { type: 'string', default: '#000000' },
    [ `colors.${Cars.CLIMAX}`          ]: { type: 'string', default: '#800080' },
    [ `colors.${Cars.HEISLER}`         ]: { type: 'string', default: '#800080' },
    [ `colors.${Cars.CLASS70}`         ]: { type: 'string', default: '#800080' },
    [ `colors.${Cars.CLASS70_TENDER}`  ]: { type: 'string', default: '#000000' },
    [ `colors.${Cars.COOKE260}`        ]: { type: 'string', default: '#800080' },
    [ `colors.${Cars.COOKE260_TENDER}` ]: { type: 'string', default: '#000000' },

    [ `colors.${Cars.FLATCAR_LOGS}.unloaded`     ]: { type: 'string', default: '#cd5c5c' },
    [ `colors.${Cars.FLATCAR_LOGS}.loaded`       ]: { type: 'string', default: '#cd5c5c' },
    [ `colors.${Cars.FLATCAR_CORDWOOD}.unloaded` ]: { type: 'string', default: '#ffa500' },
    [ `colors.${Cars.FLATCAR_CORDWOOD}.loaded`   ]: { type: 'string', default: '#ffa500' },
    [ `colors.${Cars.FLATCAR_STAKES}.unloaded`   ]: { type: 'string', default: '#adff2f' },
    [ `colors.${Cars.FLATCAR_STAKES}.loaded`     ]: { type: 'string', default: '#adff2f' },
    [ `colors.${Cars.HOPPER}.unloaded`           ]: { type: 'string', default: '#bc8f8f' },
    [ `colors.${Cars.HOPPER}.loaded`             ]: { type: 'string', default: '#bc8f8f' },
    [ `colors.${Cars.TANKER}.unloaded`           ]: { type: 'string', default: '#d3d3d3' },
    [ `colors.${Cars.TANKER}.loaded`             ]: { type: 'string', default: '#d3d3d3' },
    [ `colors.${Cars.BOXCAR}.unloaded`           ]: { type: 'string', default: '#808080' },
    [ `colors.${Cars.BOXCAR}.loaded`             ]: { type: 'string', default: '#808080' },

    [ `colors.${Cars.CABOOSE}` ]: { type: 'string', default: '#ff5e5e' },
    
    [ `colors.spline.${SplineType.TRACK}`         ]: { type: 'string', default: '#000000' },
    [ `colors.spline.${SplineType.TRENDLE_TRACK}` ]: { type: 'string', default: '#000000' },
    [ `colors.spline.${SplineType.VARIABLE_BANK}` ]: { type: 'string', default: '#bdb76b' },
    [ `colors.spline.${SplineType.CONSTANT_BANK}` ]: { type: 'string', default: '#bdb76b' },
    [ `colors.spline.${SplineType.VARIABLE_WALL}` ]: { type: 'string', default: '#a9a9a9' },
    [ `colors.spline.${SplineType.CONSTANT_WALL}` ]: { type: 'string', default: '#a9a9a9' },
    [ `colors.spline.${SplineType.WOODEN_BRIDGE}` ]: { type: 'string', default: '#ffa500' },
    [ `colors.spline.${SplineType.IRON_BRIDGE}`   ]: { type: 'string', default: '#add8e6' },

    [ `colors.switch.active`   ]: { type: 'string', default: '#000000' },
    [ `colors.switch.inactive` ]: { type: 'string', default: '#ff0000' },
    [ `colors.switch.cross`    ]: { type: 'string', default: '#000000' },
    
    [ `colors.turntable.circle` ]: { type: 'string', default: '#ffffe0' },
};

export const accessPropertiesByDotNotation = false;

export interface Schema {
    'map.background': number;
    'minimap.enabled': boolean;
    'minimap.transparent': boolean;
    'minimap.corner': number;
    'autosave.enabled': boolean;
    'autosave.slots': number[];
    'autosave.lastSlot': number;
    'autosave.interval': number;
    'minizwerg.enabled': boolean;
    'minizwerg.public': boolean;
    'minizwerg.url'?: string;
    'loglevel': 'error' | 'warn' | 'info' | 'verbose' | 'debug' | 'silly';
}

export const migrations: Options<Schema>[ 'migrations' ] = {
    '>=1.6.2': ( store ) => {
        if ( store.has( `colors.${Cars.CABOOSE}.unloaded` ) ) {
            store.set( `colors.${Cars.CABOOSE}`, store.get( `colors.${Cars.CABOOSE}.unloaded` ) );
            store.delete( `colors.${Cars.CABOOSE}.unloaded` as keyof Schema );
            store.delete( `colors.${Cars.CABOOSE}.loaded` as keyof Schema );
        }
    }
}