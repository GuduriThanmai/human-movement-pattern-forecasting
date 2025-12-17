# human-movement-pattern-forecasting
# Forecasting and Anticipatory Estimation of Human Movement Patterns

##  Project Overview
This project focuses on predicting and forecasting human mobility patterns using application-collected location data.  
By leveraging **context-aware clustering**, **Gibbs sampling**, and **Markov-based prediction models**, the system accurately estimates future human movement trends.

##  Key Features
- Context-based spatial clustering (street, district, region)
- Handles sparse and missing trajectory data using Gibbs Sampling
- Time-variant Markov Chain models for mobility prediction
- Admin dashboard for dataset upload, preprocessing, and clustering
- Visualization of movement trends

##  Technologies Used
- **Backend:** Java (JSP, Servlets)
- **Frontend:** HTML, CSS, JavaScript
- **Database:** MySQL
- **Server:** Apache Tomcat
- **IDE:** NetBeans
- **Algorithms:** Markov Models, Gibbs Sampling

##  Project Structure
- `src/` – Java & JSP source files  
- `dataset/` – Sample input datasets  
- `docs/` – Project report & UML diagrams  
- `database/` – SQL schema  
- `screenshots/` – Application UI screenshots  

##  How to Run the Project
1. Import the project into **NetBeans**
2. Configure **MySQL database**
3. Update DB credentials in `Dbconnection.java`
4. Deploy on **Apache Tomcat**
5. Access via `http://localhost:8080/project-name`

##  Results
- Achieved prediction accuracy up to **87%** using context-aware divisions
- Improved accuracy compared to grid-based clustering
- Strong correlation between predictability and accuracy

## Future Enhancements
- Integrate Deep Learning (LSTM)
- Real-time GPS data streaming
- Interactive dashboards
- Scalable cloud deployment

##  Author
**Guduri Thanmai**  
Final Year Project – IoT
