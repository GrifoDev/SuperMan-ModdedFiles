.class Lcom/samsung/android/settings/datausage/trafficmanager/DataSavingChnPreference$1;
.super Lcom/samsung/android/datasaving/IOnSavingStateChangeListener$Stub;
.source "DataSavingChnPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/datausage/trafficmanager/DataSavingChnPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/datausage/trafficmanager/DataSavingChnPreference;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/datausage/trafficmanager/DataSavingChnPreference;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/DataSavingChnPreference$1;->this$0:Lcom/samsung/android/settings/datausage/trafficmanager/DataSavingChnPreference;

    invoke-direct {p0}, Lcom/samsung/android/datasaving/IOnSavingStateChangeListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Z)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/DataSavingChnPreference$1;->this$0:Lcom/samsung/android/settings/datausage/trafficmanager/DataSavingChnPreference;

    invoke-static {v0, p1}, Lcom/samsung/android/settings/datausage/trafficmanager/DataSavingChnPreference;->-wrap0(Lcom/samsung/android/settings/datausage/trafficmanager/DataSavingChnPreference;Z)V

    return-void
.end method
