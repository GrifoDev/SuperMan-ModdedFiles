.class public Landroid/hardware/scontext/SContextActivityNotificationAttribute;
.super Landroid/hardware/scontext/SContextAttribute;
.source "SContextActivityNotificationAttribute.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final ACTIVITY_STATUS_MAX:I = 0x5

.field private static final TAG:Ljava/lang/String; = "SContextActivityNotificationAttribute"


# instance fields
.field private mActivityFilter:[I


# direct methods
.method constructor <init>()V
    .locals 3

    invoke-direct {p0}, Landroid/hardware/scontext/SContextAttribute;-><init>()V

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x4

    const/4 v2, 0x0

    aput v1, v0, v2

    iput-object v0, p0, Landroid/hardware/scontext/SContextActivityNotificationAttribute;->mActivityFilter:[I

    invoke-direct {p0}, Landroid/hardware/scontext/SContextActivityNotificationAttribute;->setAttribute()V

    return-void
.end method

.method public constructor <init>([I)V
    .locals 3

    invoke-direct {p0}, Landroid/hardware/scontext/SContextAttribute;-><init>()V

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x4

    const/4 v2, 0x0

    aput v1, v0, v2

    iput-object v0, p0, Landroid/hardware/scontext/SContextActivityNotificationAttribute;->mActivityFilter:[I

    iput-object p1, p0, Landroid/hardware/scontext/SContextActivityNotificationAttribute;->mActivityFilter:[I

    invoke-direct {p0}, Landroid/hardware/scontext/SContextActivityNotificationAttribute;->setAttribute()V

    return-void
.end method

.method private setAttribute()V
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "activity_filter"

    iget-object v2, p0, Landroid/hardware/scontext/SContextActivityNotificationAttribute;->mActivityFilter:[I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    const/16 v1, 0x1b

    invoke-super {p0, v1, v0}, Landroid/hardware/scontext/SContextAttribute;->setAttribute(ILandroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method public checkAttribute()Z
    .locals 6

    const/4 v5, 0x0

    iget-object v3, p0, Landroid/hardware/scontext/SContextActivityNotificationAttribute;->mActivityFilter:[I

    if-nez v3, :cond_0

    return v5

    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    :goto_0
    iget-object v3, p0, Landroid/hardware/scontext/SContextActivityNotificationAttribute;->mActivityFilter:[I

    array-length v3, v3

    if-ge v0, v3, :cond_5

    iget-object v3, p0, Landroid/hardware/scontext/SContextActivityNotificationAttribute;->mActivityFilter:[I

    aget v3, v3, v0

    if-ltz v3, :cond_1

    iget-object v3, p0, Landroid/hardware/scontext/SContextActivityNotificationAttribute;->mActivityFilter:[I

    aget v3, v3, v0

    const/4 v4, 0x5

    if-le v3, v4, :cond_2

    :cond_1
    const-string/jumbo v3, "SContextActivityNotificationAttribute"

    const-string/jumbo v4, "The activity status is wrong."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :cond_2
    iget-object v3, p0, Landroid/hardware/scontext/SContextActivityNotificationAttribute;->mActivityFilter:[I

    aget v3, v3, v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_4

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-ne v3, v4, :cond_3

    const-string/jumbo v3, "SContextActivityNotificationAttribute"

    const-string/jumbo v4, "This activity status cannot have duplicated status."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    const/4 v3, 0x1

    return v3
.end method
