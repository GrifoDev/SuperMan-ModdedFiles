.class Lcom/samsung/android/aod/AlwaysOnDisplayService$AlwaysOnDisplayServiceWrapper$5;
.super Ljava/lang/Object;
.source "AlwaysOnDisplayService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/aod/AlwaysOnDisplayService$AlwaysOnDisplayServiceWrapper;->updateCalendarData(Ljava/util/List;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/aod/AlwaysOnDisplayService$AlwaysOnDisplayServiceWrapper;

.field final synthetic val$description:Ljava/util/List;

.field final synthetic val$timeInfo:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/samsung/android/aod/AlwaysOnDisplayService$AlwaysOnDisplayServiceWrapper;Ljava/util/List;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/aod/AlwaysOnDisplayService$AlwaysOnDisplayServiceWrapper$5;->this$1:Lcom/samsung/android/aod/AlwaysOnDisplayService$AlwaysOnDisplayServiceWrapper;

    iput-object p2, p0, Lcom/samsung/android/aod/AlwaysOnDisplayService$AlwaysOnDisplayServiceWrapper$5;->val$timeInfo:Ljava/util/List;

    iput-object p3, p0, Lcom/samsung/android/aod/AlwaysOnDisplayService$AlwaysOnDisplayServiceWrapper$5;->val$description:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/aod/AlwaysOnDisplayService$AlwaysOnDisplayServiceWrapper$5;->this$1:Lcom/samsung/android/aod/AlwaysOnDisplayService$AlwaysOnDisplayServiceWrapper;

    iget-object v0, v0, Lcom/samsung/android/aod/AlwaysOnDisplayService$AlwaysOnDisplayServiceWrapper;->this$0:Lcom/samsung/android/aod/AlwaysOnDisplayService;

    iget-object v1, p0, Lcom/samsung/android/aod/AlwaysOnDisplayService$AlwaysOnDisplayServiceWrapper$5;->val$timeInfo:Ljava/util/List;

    iget-object v2, p0, Lcom/samsung/android/aod/AlwaysOnDisplayService$AlwaysOnDisplayServiceWrapper$5;->val$description:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/aod/AlwaysOnDisplayService;->updateCalendarData(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method
