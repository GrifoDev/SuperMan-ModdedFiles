.class Lcom/android/systemui/recents/model/RecentsAppListLoader$6;
.super Ljava/lang/Object;
.source "RecentsAppListLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/recents/model/RecentsAppListLoader;->loadAppInfoData(Lcom/android/systemui/recents/model/AppInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recents/model/RecentsAppListLoader;

.field final synthetic val$info:Lcom/android/systemui/recents/model/AppInfo;


# direct methods
.method constructor <init>(Lcom/android/systemui/recents/model/RecentsAppListLoader;Lcom/android/systemui/recents/model/AppInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/recents/model/RecentsAppListLoader$6;->this$0:Lcom/android/systemui/recents/model/RecentsAppListLoader;

    iput-object p2, p0, Lcom/android/systemui/recents/model/RecentsAppListLoader$6;->val$info:Lcom/android/systemui/recents/model/AppInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v1, p0, Lcom/android/systemui/recents/model/RecentsAppListLoader$6;->this$0:Lcom/android/systemui/recents/model/RecentsAppListLoader;

    iget-object v2, p0, Lcom/android/systemui/recents/model/RecentsAppListLoader$6;->val$info:Lcom/android/systemui/recents/model/AppInfo;

    iget-object v2, v2, Lcom/android/systemui/recents/model/AppInfo;->resolveInfo:Landroid/content/pm/ResolveInfo;

    invoke-static {v1, v2}, Lcom/android/systemui/recents/model/RecentsAppListLoader;->-wrap0(Lcom/android/systemui/recents/model/RecentsAppListLoader;Landroid/content/pm/ResolveInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/recents/model/RecentsAppListLoader$6;->this$0:Lcom/android/systemui/recents/model/RecentsAppListLoader;

    iget-object v2, p0, Lcom/android/systemui/recents/model/RecentsAppListLoader$6;->val$info:Lcom/android/systemui/recents/model/AppInfo;

    iget-object v2, v2, Lcom/android/systemui/recents/model/AppInfo;->key:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lcom/android/systemui/recents/model/RecentsAppListLoader;->-wrap1(Lcom/android/systemui/recents/model/RecentsAppListLoader;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/android/systemui/recents/model/RecentsAppListLoader$6;->this$0:Lcom/android/systemui/recents/model/RecentsAppListLoader;

    invoke-static {v1}, Lcom/android/systemui/recents/model/RecentsAppListLoader;->-get4(Lcom/android/systemui/recents/model/RecentsAppListLoader;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/recents/model/RecentsAppListLoader$6$1;

    iget-object v3, p0, Lcom/android/systemui/recents/model/RecentsAppListLoader$6;->val$info:Lcom/android/systemui/recents/model/AppInfo;

    invoke-direct {v2, p0, v3, v0}, Lcom/android/systemui/recents/model/RecentsAppListLoader$6$1;-><init>(Lcom/android/systemui/recents/model/RecentsAppListLoader$6;Lcom/android/systemui/recents/model/AppInfo;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
