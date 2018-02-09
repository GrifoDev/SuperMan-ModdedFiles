.class Lcom/android/server/display/WifiDisplayAdapter$DlnaClientDeathMonitor$1;
.super Ljava/lang/Object;
.source "WifiDisplayAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/display/WifiDisplayAdapter$DlnaClientDeathMonitor;->binderDied()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/display/WifiDisplayAdapter$DlnaClientDeathMonitor;


# direct methods
.method constructor <init>(Lcom/android/server/display/WifiDisplayAdapter$DlnaClientDeathMonitor;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/display/WifiDisplayAdapter$DlnaClientDeathMonitor$1;->this$1:Lcom/android/server/display/WifiDisplayAdapter$DlnaClientDeathMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$DlnaClientDeathMonitor$1;->this$1:Lcom/android/server/display/WifiDisplayAdapter$DlnaClientDeathMonitor;

    iget-object v0, v0, Lcom/android/server/display/WifiDisplayAdapter$DlnaClientDeathMonitor;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v0}, Lcom/android/server/display/WifiDisplayAdapter;->-wrap5(Lcom/android/server/display/WifiDisplayAdapter;)V

    return-void
.end method
