import logo from "./logo.svg";
import "./App.css";
import Header from "./components/Header/Header";
import Movies from "./containers/Movies/Movies";
import Footer from "./components/Footer/Footer";

function App() {
    return (
        <div className="App">
            <Header />
            <Movies />
            <Footer />
        </div>
    );
}

export default App;
