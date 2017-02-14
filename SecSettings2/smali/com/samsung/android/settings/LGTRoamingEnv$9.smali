.class Lcom/samsung/android/settings/LGTRoamingEnv$9;
.super Ljava/lang/Object;
.source "LGTRoamingEnv.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/LGTRoamingEnv;->updateCountryInfo()V
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

    iput-object p1, p0, Lcom/samsung/android/settings/LGTRoamingEnv$9;->this$0:Lcom/samsung/android/settings/LGTRoamingEnv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/LGTRoamingEnv$9;->this$0:Lcom/samsung/android/settings/LGTRoamingEnv;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/settings/LGTRoamingEnv;->-set2(Lcom/samsung/android/settings/LGTRoamingEnv;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    return-void
.end method
