import React from "react";
import Card from "../../components/Card/Card";
import movies from "../../sampleMovieObject";
import styles from "./Movies.module.scss";

const Movies = () => {
    const moviesData = movies;
    return (
        <main className={styles.Movies}>
            <h1 className={styles.Movies__Title}>Movies</h1>
            <section className={styles.Movies__MovieCollection}>
                <div className={styles.Movies__MovieCollection__Grid}>
                    {moviesData.map((movie, index) => {
                        return <Card movieData={movie} key={index} />;
                    })}
                </div>
            </section>
        </main>
    );
};

export default Movies;
