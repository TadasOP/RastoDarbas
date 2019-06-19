
png(filename = "BMW_SALES.png", width = 960, height = 540, units = "px")
ggplot(BMWSALES, aes(x=Month, y=Sales))+
  geom_line(size=1.1, col="Light Blue")+
  geom_point()+
  theme(axis.text.x = element_text(angle = 45, hjust = 1))+
  geom_text(aes(label=Sales),hjust=1, vjust=-1, size=3, angle=0, col="black")+
  labs(title = "BMW 2/3/4 Series sales in the U.S.",
       subtitle = "Source: bloomberg.com",
       x="Month",
       y="Sales")
dev.off()

png(filename = "TESLA_SALES.png", width = 960, height = 540, units = "px")
ggplot(TESLASALES, aes(x=Month, y=Sales))+
  geom_line(size=1.1, col="Light Blue")+
  geom_point()+
  theme(axis.text.x = element_text(angle = 45, hjust = 1))+
  geom_text(aes(label=Sales),hjust=1, vjust=-1, size=3, angle=0, col="black")+
  labs(title = "Tesla Model 3 sales in the U.S.",
       subtitle = "Source: bloomberg.com",
       x="Month",
       y="Sales")
dev.off()


png(filename = "ITALY_OIL_DEMAND.png", width = 960, height = 540, units = "px")
ggplot(ITALY_OIL_DEMAND, aes(x=Time, y=Values))+
  geom_line(size=1.1, col="Purple")+
  geom_point(size=1.5, col="black")+
  geom_text(aes(label=Values),hjust=-1.5, vjust=-0.5, size=2, angle=-90, col="black")+
  theme(axis.text.x = element_text(angle = 0, hjust = 0.5))+
  labs(title = "Italy motor and aviation gas demand",
       subtitle = "Source: bloomberg.com",
       x="Time",
       y="Barrels a day")
dev.off()
