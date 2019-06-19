df4 <- Ev_Market_Share

df4$Year <- as.factor(df4$Year)
png(filename = "EVs_Sales_Market_share_year.png", width = 960, height = 540, units = "px")
ggplot(Ev_Market_Share, aes(x=Year, y=Share))+
  geom_line(size=1.1, col="Pink")+
  geom_point()+
  theme(axis.text.x = element_text(angle = 45, hjust = 1))+
  geom_text(aes(label=Share),hjust=1, vjust=-1, size=3, angle=0, col="brown")+
  labs(title = "Electric Vehicles Sales Market Share by Year (Percentage) - U.S. Market",
       subtitle = "Source: evadoption.com/ev-market-share/",
       x="Year",
       y="EVs Market %")
dev.off()
