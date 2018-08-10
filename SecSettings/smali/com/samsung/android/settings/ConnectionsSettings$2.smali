.class Lcom/samsung/android/settings/ConnectionsSettings$2;
.super Landroid/database/ContentObserver;
.source "ConnectionsSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/ConnectionsSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/ConnectionsSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/ConnectionsSettings;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/ConnectionsSettings$2;->this$0:Lcom/samsung/android/settings/ConnectionsSettings;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2

    const-string/jumbo v0, "wificalling"

    const-string/jumbo v1, "wificalling activity state changed"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/ConnectionsSettings$2;->this$0:Lcom/samsung/android/settings/ConnectionsSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/ConnectionsSettings;->-wrap1(Lcom/samsung/android/settings/ConnectionsSettings;)Z

    return-void
.end method
