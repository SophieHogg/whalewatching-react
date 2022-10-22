import React from "react";
import styles from "./Card.module.scss";

const Card = ({ movieData }) => {
    return (
        <div className={styles.Card}>
            <h3 className={styles.Card__Title}>
                <span className={styles.Card__Title__Header}>
                    {movieData.MovieName}
                </span>{" "}
                ({movieData.ReleaseYear})
            </h3>
            <p>Director: {movieData.DirectorName}</p>
            <p>Star Actor: {movieData.ActorName}</p>
        </div>
    );
};

export default Card;
