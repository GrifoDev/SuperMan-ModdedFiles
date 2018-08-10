.class final synthetic Lcom/android/server/wm/-$Lambda$OzPvdnGprtQoLZLCvw2GU8IaGyI$38;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/internal/util/ToBooleanFunction;


# instance fields
.field private final synthetic -$f0:Z

.field private final synthetic -$f1:Z

.field private final synthetic -$f2:I

.field private final synthetic -$f3:Ljava/lang/Object;

.field private final synthetic -$f4:Ljava/lang/Object;

.field private final synthetic -$f5:Ljava/lang/Object;

.field private final synthetic -$f6:Ljava/lang/Object;

.field private final synthetic -$f7:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0(Ljava/lang/Object;)Z
    .locals 9

    iget-object v0, p0, Lcom/android/server/wm/-$Lambda$OzPvdnGprtQoLZLCvw2GU8IaGyI$38;->-$f3:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/wm/DisplayContent;

    iget v1, p0, Lcom/android/server/wm/-$Lambda$OzPvdnGprtQoLZLCvw2GU8IaGyI$38;->-$f2:I

    iget-boolean v2, p0, Lcom/android/server/wm/-$Lambda$OzPvdnGprtQoLZLCvw2GU8IaGyI$38;->-$f0:Z

    iget-object v3, p0, Lcom/android/server/wm/-$Lambda$OzPvdnGprtQoLZLCvw2GU8IaGyI$38;->-$f4:Ljava/lang/Object;

    check-cast v3, Landroid/os/IBinder;

    iget-object v4, p0, Lcom/android/server/wm/-$Lambda$OzPvdnGprtQoLZLCvw2GU8IaGyI$38;->-$f5:Ljava/lang/Object;

    check-cast v4, Landroid/util/MutableBoolean;

    iget-boolean v5, p0, Lcom/android/server/wm/-$Lambda$OzPvdnGprtQoLZLCvw2GU8IaGyI$38;->-$f1:Z

    iget-object v6, p0, Lcom/android/server/wm/-$Lambda$OzPvdnGprtQoLZLCvw2GU8IaGyI$38;->-$f6:Ljava/lang/Object;

    check-cast v6, Landroid/graphics/Rect;

    iget-object v7, p0, Lcom/android/server/wm/-$Lambda$OzPvdnGprtQoLZLCvw2GU8IaGyI$38;->-$f7:Ljava/lang/Object;

    check-cast v7, Landroid/graphics/Rect;

    move-object v8, p1

    check-cast v8, Lcom/android/server/wm/WindowState;

    invoke-virtual/range {v0 .. v8}, Lcom/android/server/wm/DisplayContent;->lambda$-com_android_server_wm_DisplayContent_164996(IZLandroid/os/IBinder;Landroid/util/MutableBoolean;ZLandroid/graphics/Rect;Landroid/graphics/Rect;Lcom/android/server/wm/WindowState;)Z

    move-result v0

    return v0
.end method

.method public synthetic constructor <init>(ZZILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/android/server/wm/-$Lambda$OzPvdnGprtQoLZLCvw2GU8IaGyI$38;->-$f0:Z

    iput-boolean p2, p0, Lcom/android/server/wm/-$Lambda$OzPvdnGprtQoLZLCvw2GU8IaGyI$38;->-$f1:Z

    iput p3, p0, Lcom/android/server/wm/-$Lambda$OzPvdnGprtQoLZLCvw2GU8IaGyI$38;->-$f2:I

    iput-object p4, p0, Lcom/android/server/wm/-$Lambda$OzPvdnGprtQoLZLCvw2GU8IaGyI$38;->-$f3:Ljava/lang/Object;

    iput-object p5, p0, Lcom/android/server/wm/-$Lambda$OzPvdnGprtQoLZLCvw2GU8IaGyI$38;->-$f4:Ljava/lang/Object;

    iput-object p6, p0, Lcom/android/server/wm/-$Lambda$OzPvdnGprtQoLZLCvw2GU8IaGyI$38;->-$f5:Ljava/lang/Object;

    iput-object p7, p0, Lcom/android/server/wm/-$Lambda$OzPvdnGprtQoLZLCvw2GU8IaGyI$38;->-$f6:Ljava/lang/Object;

    iput-object p8, p0, Lcom/android/server/wm/-$Lambda$OzPvdnGprtQoLZLCvw2GU8IaGyI$38;->-$f7:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/wm/-$Lambda$OzPvdnGprtQoLZLCvw2GU8IaGyI$38;->$m$0(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
