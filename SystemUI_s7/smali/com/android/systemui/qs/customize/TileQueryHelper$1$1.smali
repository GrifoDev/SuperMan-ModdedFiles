.class Lcom/android/systemui/qs/customize/TileQueryHelper$1$1;
.super Ljava/lang/Object;
.source "TileQueryHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/customize/TileQueryHelper$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/qs/customize/TileQueryHelper$1;

.field final synthetic val$spec:Ljava/lang/String;

.field final synthetic val$state:Lcom/android/systemui/qs/QSTile$State;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/customize/TileQueryHelper$1;Ljava/lang/String;Lcom/android/systemui/qs/QSTile$State;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/customize/TileQueryHelper$1$1;->this$1:Lcom/android/systemui/qs/customize/TileQueryHelper$1;

    iput-object p2, p0, Lcom/android/systemui/qs/customize/TileQueryHelper$1$1;->val$spec:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/systemui/qs/customize/TileQueryHelper$1$1;->val$state:Lcom/android/systemui/qs/QSTile$State;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/qs/customize/TileQueryHelper$1$1;->this$1:Lcom/android/systemui/qs/customize/TileQueryHelper$1;

    iget-object v0, v0, Lcom/android/systemui/qs/customize/TileQueryHelper$1;->this$0:Lcom/android/systemui/qs/customize/TileQueryHelper;

    iget-object v1, p0, Lcom/android/systemui/qs/customize/TileQueryHelper$1$1;->val$spec:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/systemui/qs/customize/TileQueryHelper$1$1;->val$state:Lcom/android/systemui/qs/QSTile$State;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v0, v1, v3, v2, v4}, Lcom/android/systemui/qs/customize/TileQueryHelper;->-wrap2(Lcom/android/systemui/qs/customize/TileQueryHelper;Ljava/lang/String;Ljava/lang/CharSequence;Lcom/android/systemui/qs/QSTile$State;Z)V

    iget-object v0, p0, Lcom/android/systemui/qs/customize/TileQueryHelper$1$1;->this$1:Lcom/android/systemui/qs/customize/TileQueryHelper$1;

    iget-object v0, v0, Lcom/android/systemui/qs/customize/TileQueryHelper$1;->this$0:Lcom/android/systemui/qs/customize/TileQueryHelper;

    invoke-static {v0}, Lcom/android/systemui/qs/customize/TileQueryHelper;->-get1(Lcom/android/systemui/qs/customize/TileQueryHelper;)Lcom/android/systemui/qs/customize/TileQueryHelper$TileStateListener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qs/customize/TileQueryHelper$1$1;->this$1:Lcom/android/systemui/qs/customize/TileQueryHelper$1;

    iget-object v1, v1, Lcom/android/systemui/qs/customize/TileQueryHelper$1;->this$0:Lcom/android/systemui/qs/customize/TileQueryHelper;

    invoke-static {v1}, Lcom/android/systemui/qs/customize/TileQueryHelper;->-get2(Lcom/android/systemui/qs/customize/TileQueryHelper;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/systemui/qs/customize/TileQueryHelper$TileStateListener;->onTilesChanged(Ljava/util/List;)V

    return-void
.end method
