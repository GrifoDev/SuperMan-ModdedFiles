.class final synthetic Lcom/android/systemui/statusbar/-$Lambda$lHCf4iJXJj1ODt2YAfgGVLZsSQw;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/systemui/statusbar/StatusBarIconView$OnVisibilityChangedListener;


# instance fields
.field private final synthetic -$f0:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/-$Lambda$lHCf4iJXJj1ODt2YAfgGVLZsSQw;->-$f0:Ljava/lang/Object;

    check-cast v0, Lcom/android/systemui/statusbar/NotificationData$Entry;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/NotificationData$Entry;->lambda$-com_android_systemui_statusbar_NotificationData$Entry_9832(I)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/-$Lambda$lHCf4iJXJj1ODt2YAfgGVLZsSQw;->-$f0:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final onVisibilityChanged(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/-$Lambda$lHCf4iJXJj1ODt2YAfgGVLZsSQw;->$m$0(I)V

    return-void
.end method
