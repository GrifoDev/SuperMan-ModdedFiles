.class final synthetic Lcom/android/systemui/recents/views/-$Lambda$7BLSR_D9hzyZSuS2NEhB6gs29w4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field private final synthetic -$f0:I

.field private final synthetic -$f1:Ljava/lang/Object;

.field private final synthetic -$f2:Ljava/lang/Object;

.field private final synthetic -$f3:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0(Ljava/lang/Object;)Z
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/recents/views/-$Lambda$7BLSR_D9hzyZSuS2NEhB6gs29w4;->-$f1:Ljava/lang/Object;

    check-cast v0, Lcom/android/systemui/recents/misc/SystemServicesProxy;

    iget v3, p0, Lcom/android/systemui/recents/views/-$Lambda$7BLSR_D9hzyZSuS2NEhB6gs29w4;->-$f0:I

    iget-object v1, p0, Lcom/android/systemui/recents/views/-$Lambda$7BLSR_D9hzyZSuS2NEhB6gs29w4;->-$f2:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/android/systemui/recents/views/-$Lambda$7BLSR_D9hzyZSuS2NEhB6gs29w4;->-$f3:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    check-cast p1, Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-static {v0, v3, v1, v2, p1}, Lcom/android/systemui/recents/views/AppInfoViewHolder$1;->lambda$-com_android_systemui_recents_views_AppInfoViewHolder$1_4742(Lcom/android/systemui/recents/misc/SystemServicesProxy;ILjava/lang/String;Ljava/lang/String;Landroid/app/ActivityManager$RunningTaskInfo;)Z

    move-result v0

    return v0
.end method

.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/systemui/recents/views/-$Lambda$7BLSR_D9hzyZSuS2NEhB6gs29w4;->-$f0:I

    iput-object p2, p0, Lcom/android/systemui/recents/views/-$Lambda$7BLSR_D9hzyZSuS2NEhB6gs29w4;->-$f1:Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/systemui/recents/views/-$Lambda$7BLSR_D9hzyZSuS2NEhB6gs29w4;->-$f2:Ljava/lang/Object;

    iput-object p4, p0, Lcom/android/systemui/recents/views/-$Lambda$7BLSR_D9hzyZSuS2NEhB6gs29w4;->-$f3:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/systemui/recents/views/-$Lambda$7BLSR_D9hzyZSuS2NEhB6gs29w4;->$m$0(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
