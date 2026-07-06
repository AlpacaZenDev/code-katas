export const pokemonIds = [1,20,30,34,66];

// export const pokemon = {
//     id : 1,
//     name : 'Bulbasaur',
//     age : 23
// }

interface Pokemon {
    id: number;
    name: string;
    age?: number | undefined;
}

export const bulbasaur:Pokemon = {
    id: 1,
    name: 'Bulbasaur',
}

export const charmander:Pokemon = {
    id: 2,
    name: 'Charmander',
    age: 3,
}

console.log(bulbasaur);

export const pokemons: Pokemon[] = [];

pokemons.push( charmander, bulbasaur );

console.log(pokemons);

