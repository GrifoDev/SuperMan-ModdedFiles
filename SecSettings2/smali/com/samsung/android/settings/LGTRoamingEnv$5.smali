.class Lcom/samsung/android/settings/LGTRoamingEnv$5;
.super Landroid/database/ContentObserver;
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
.method constructor <init>(Lcom/samsung/android/settings/LGTRoamingEnv;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/LGTRoamingEnv$5;->this$0:Lcom/samsung/android/settings/LGTRoamingEnv;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/settings/LGTRoamingEnv$5;->this$0:Lcom/samsung/android/settings/LGTRoamingEnv;

    invoke-static {v1}, Lcom/samsung/android/settings/LGTRoamingEnv;->-get6(Lcom/samsung/android/settings/LGTRoamingEnv;)Landroid/preference/SwitchPreference;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/LGTRoamingEnv$5;->this$0:Lcom/samsung/android/settings/LGTRoamingEnv;

    invoke-static {v2}, Lcom/samsung/android/settings/LGTRoamingEnv;->-wrap0(Lcom/samsung/android/settings/LGTRoamingEnv;)Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/SwitchPreference;->setChecked(Z)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method
