if(!require(scales)) install.packages("scales"); require(scales)
if(!require(ggplot2)) install.packages("ggplot2"); require(ggplot2)

df2 <- EV_HYBRIDS

png(filename = "EVs_sold_by_year.png", width = 750, height = 480, units = "px")
ggplot(df2, aes(x=Year, y=EVs))+
  geom_line(size=1.1, col="maroon")+
  geom_point()+
  theme(axis.text.x = element_text(angle = 45, hjust = 1))+
  geom_text(aes(label=EVs),hjust=1, vjust=-1, size=3, angle=0, col="black")+
  labs(title = "Electric Vehicles Sales by Year - U.S. Market",
       subtitle = "Source: EDTA",
       x="Year",
       y="EVs Sold")
dev.off()
