.class Lcom/android/systemui/recents/misc/RecentsStatistics$2;
.super Ljava/lang/Object;
.source "RecentsStatistics.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/recents/misc/RecentsStatistics;->sendMultiWindowDiagnosticDataToGSIM(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recents/misc/RecentsStatistics;

.field final synthetic val$extra:Ljava/lang/String;

.field final synthetic val$feature:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/systemui/recents/misc/RecentsStatistics;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/recents/misc/RecentsStatistics$2;->this$0:Lcom/android/systemui/recents/misc/RecentsStatistics;

    iput-object p2, p0, Lcom/android/systemui/recents/misc/RecentsStatistics$2;->val$feature:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/systemui/recents/misc/RecentsStatistics$2;->val$extra:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/recents/misc/RecentsStatistics$2;->this$0:Lcom/android/systemui/recents/misc/RecentsStatistics;

    iget-object v0, v0, Lcom/android/systemui/recents/misc/RecentsStatistics;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/recents/misc/RecentsStatistics$2;->val$feature:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/systemui/recents/misc/RecentsStatistics$2;->val$extra:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/samsung/android/multiwindow/MultiWindowLogger;->logGSIM(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
