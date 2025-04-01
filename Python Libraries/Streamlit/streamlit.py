import streamlit as st
import pandas as pd
import numpy as np 


## Title of Application
st.title("Hello StreamLit")

## simple line in a streamlit
st.write("Hello I am simple text")

df = pd.DataFrame({
    'First Col ' : [1,2,3,4],
    'Second Col ' : [10,20,30,40]
})

## Displaying DataFrame using streamlit

st.write("Here is the data frame")# This is the simple msg
st.write(df)