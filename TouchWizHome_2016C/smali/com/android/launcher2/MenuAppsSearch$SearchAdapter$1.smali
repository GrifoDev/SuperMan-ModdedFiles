.class Lcom/android/launcher2/MenuAppsSearch$SearchAdapter$1;
.super Ljava/lang/Object;
.source "MenuAppsSearch.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/MenuAppsSearch$SearchAdapter;->runFilter()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/launcher2/MenuAppsSearch$SearchAdapter;


# direct methods
.method constructor <init>(Lcom/android/launcher2/MenuAppsSearch$SearchAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/MenuAppsSearch$SearchAdapter$1;->this$1:Lcom/android/launcher2/MenuAppsSearch$SearchAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const-string v0, "MenuAppsSearch"

    const-string v1, "runFilter : posted delay"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/launcher2/MenuAppsSearch$SearchAdapter$1;->this$1:Lcom/android/launcher2/MenuAppsSearch$SearchAdapter;

    invoke-virtual {v0}, Lcom/android/launcher2/MenuAppsSearch$SearchAdapter;->runFilter()V

    return-void
.end method
