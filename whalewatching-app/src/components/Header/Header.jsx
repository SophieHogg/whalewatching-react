import React from "react";
import styles from "./Header.module.scss";

const Header = () => {
    return (
        <header className={styles.Header}>
            <h1 className={styles.Header__Title}>WhaleWatching</h1>
            <h3 className={styles.Header__Subtitle}>
                A movie-tracking application
            </h3>
        </header>
    );
};

export default Header;
