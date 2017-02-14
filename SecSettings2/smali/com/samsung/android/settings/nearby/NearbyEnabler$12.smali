.class Lcom/samsung/android/settings/nearby/NearbyEnabler$12;
.super Ljava/lang/Object;
.source "NearbyEnabler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/nearby/NearbyEnabler;->requestRestartServerPopup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/nearby/NearbyEnabler;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/nearby/NearbyEnabler;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/nearby/NearbyEnabler$12;->this$0:Lcom/samsung/android/settings/nearby/NearbyEnabler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 3

    const-string/jumbo v0, "NearbyEnabler"

    const-string/jumbo v1, "requestRestartServerPopup"

    const-string/jumbo v2, "Restart AlertDialog Select : cancel - do nothing"

    invoke-static {v0, v1, v2}, Lcom/samsung/android/settings/nearby/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
