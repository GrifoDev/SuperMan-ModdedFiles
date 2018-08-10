.class final synthetic Lcom/android/systemui/statusbar/notification/-$Lambda$i-OzK8bcRGEPVjiIvScg5OybJuA$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/support/v7/graphics/Palette$Filter;


# instance fields
.field private final synthetic -$f0:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0(I[F)Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/-$Lambda$i-OzK8bcRGEPVjiIvScg5OybJuA$1;->-$f0:Ljava/lang/Object;

    check-cast v0, Lcom/android/systemui/statusbar/notification/MediaNotificationProcessor;

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/statusbar/notification/MediaNotificationProcessor;->lambda$-com_android_systemui_statusbar_notification_MediaNotificationProcessor_5787(I[F)Z

    move-result v0

    return v0
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/-$Lambda$i-OzK8bcRGEPVjiIvScg5OybJuA$1;->-$f0:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final isAllowed(I[F)Z
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/-$Lambda$i-OzK8bcRGEPVjiIvScg5OybJuA$1;->$m$0(I[F)Z

    move-result v0

    return v0
.end method
