.class Lcom/android/systemui/recents/model/RecentsAppListLoader$6$1;
.super Ljava/lang/Object;
.source "RecentsAppListLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/recents/model/RecentsAppListLoader$6;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/recents/model/RecentsAppListLoader$6;

.field final synthetic val$d:Landroid/graphics/drawable/Drawable;

.field final synthetic val$info:Lcom/android/systemui/recents/model/AppInfo;


# direct methods
.method constructor <init>(Lcom/android/systemui/recents/model/RecentsAppListLoader$6;Lcom/android/systemui/recents/model/AppInfo;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/recents/model/RecentsAppListLoader$6$1;->this$1:Lcom/android/systemui/recents/model/RecentsAppListLoader$6;

    iput-object p2, p0, Lcom/android/systemui/recents/model/RecentsAppListLoader$6$1;->val$info:Lcom/android/systemui/recents/model/AppInfo;

    iput-object p3, p0, Lcom/android/systemui/recents/model/RecentsAppListLoader$6$1;->val$d:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/recents/model/RecentsAppListLoader$6$1;->val$info:Lcom/android/systemui/recents/model/AppInfo;

    iget-object v1, p0, Lcom/android/systemui/recents/model/RecentsAppListLoader$6$1;->val$d:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/model/AppInfo;->notifyDataLoaded(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
