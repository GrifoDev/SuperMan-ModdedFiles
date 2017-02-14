.class Lcom/android/launcher2/MenuAppsSearch$RecentAdapter$1;
.super Ljava/lang/Object;
.source "MenuAppsSearch.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/MenuAppsSearch$RecentAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/launcher2/MenuAppsSearch$RecentAdapter;


# direct methods
.method constructor <init>(Lcom/android/launcher2/MenuAppsSearch$RecentAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/MenuAppsSearch$RecentAdapter$1;->this$1:Lcom/android/launcher2/MenuAppsSearch$RecentAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/MenuAppsSearch$RecentAdapter$1;->this$1:Lcom/android/launcher2/MenuAppsSearch$RecentAdapter;

    iget-object v0, v0, Lcom/android/launcher2/MenuAppsSearch$RecentAdapter;->this$0:Lcom/android/launcher2/MenuAppsSearch;

    invoke-virtual {v0}, Lcom/android/launcher2/MenuAppsSearch;->refreschRecentView()V

    return-void
.end method
