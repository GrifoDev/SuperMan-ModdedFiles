.class Lcom/samsung/android/settings/LGTRoamingEnv$2;
.super Landroid/telephony/PhoneStateListener;
.source "LGTRoamingEnv.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/LGTRoamingEnv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/LGTRoamingEnv;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/LGTRoamingEnv;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/LGTRoamingEnv$2;->this$0:Lcom/samsung/android/settings/LGTRoamingEnv;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDataConnectionStateChanged(I)V
    .locals 0

    return-void
.end method

.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 3

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    const-string/jumbo v0, "LGTRoamingEnv"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mPhoneStateListener : + "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/LGTRoamingEnv$2;->this$0:Lcom/samsung/android/settings/LGTRoamingEnv;

    invoke-static {v2}, Lcom/samsung/android/settings/LGTRoamingEnv;->-get5(Lcom/samsung/android/settings/LGTRoamingEnv;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/LGTRoamingEnv$2;->this$0:Lcom/samsung/android/settings/LGTRoamingEnv;

    invoke-static {v2}, Lcom/samsung/android/settings/LGTRoamingEnv;->-get4(Lcom/samsung/android/settings/LGTRoamingEnv;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/LGTRoamingEnv$2;->this$0:Lcom/samsung/android/settings/LGTRoamingEnv;

    invoke-static {v0}, Lcom/samsung/android/settings/LGTRoamingEnv;->-get5(Lcom/samsung/android/settings/LGTRoamingEnv;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/LGTRoamingEnv$2;->this$0:Lcom/samsung/android/settings/LGTRoamingEnv;

    invoke-static {v0}, Lcom/samsung/android/settings/LGTRoamingEnv;->-get4(Lcom/samsung/android/settings/LGTRoamingEnv;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/LGTRoamingEnv$2;->this$0:Lcom/samsung/android/settings/LGTRoamingEnv;

    invoke-static {v0}, Lcom/samsung/android/settings/LGTRoamingEnv;->-wrap2(Lcom/samsung/android/settings/LGTRoamingEnv;)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/LGTRoamingEnv$2;->this$0:Lcom/samsung/android/settings/LGTRoamingEnv;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/settings/LGTRoamingEnv;->-set1(Lcom/samsung/android/settings/LGTRoamingEnv;Z)Z

    :cond_1
    return-void
.end method
