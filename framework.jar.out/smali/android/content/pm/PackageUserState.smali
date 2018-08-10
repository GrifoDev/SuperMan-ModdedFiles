.class public Landroid/content/pm/PackageUserState;
.super Ljava/lang/Object;
.source "PackageUserState.java"


# instance fields
.field public appLinkGeneration:I

.field public categoryHint:I

.field public ceDataInode:J

.field public disabledComponents:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public domainVerificationStatus:I

.field public enabled:I

.field public enabledComponents:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public hidden:Z

.field public installReason:I

.field public installed:Z

.field public instantApp:Z

.field public lastDisableAppCaller:Ljava/lang/String;

.field public notLaunched:Z

.field public overlayPaths:[Ljava/lang/String;

.field public stopped:Z

.field public suspended:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Landroid/content/pm/PackageUserState;->categoryHint:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/content/pm/PackageUserState;->installed:Z

    iput-boolean v1, p0, Landroid/content/pm/PackageUserState;->hidden:Z

    iput-boolean v1, p0, Landroid/content/pm/PackageUserState;->suspended:Z

    iput v1, p0, Landroid/content/pm/PackageUserState;->enabled:I

    iput v1, p0, Landroid/content/pm/PackageUserState;->domainVerificationStatus:I

    iput v1, p0, Landroid/content/pm/PackageUserState;->installReason:I

    return-void
.end method

.method public constructor <init>(Landroid/content/pm/PackageUserState;)V
    .locals 4

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, -0x1

    iput v1, p0, Landroid/content/pm/PackageUserState;->categoryHint:I

    iget-wide v2, p1, Landroid/content/pm/PackageUserState;->ceDataInode:J

    iput-wide v2, p0, Landroid/content/pm/PackageUserState;->ceDataInode:J

    iget-boolean v1, p1, Landroid/content/pm/PackageUserState;->installed:Z

    iput-boolean v1, p0, Landroid/content/pm/PackageUserState;->installed:Z

    iget-boolean v1, p1, Landroid/content/pm/PackageUserState;->stopped:Z

    iput-boolean v1, p0, Landroid/content/pm/PackageUserState;->stopped:Z

    iget-boolean v1, p1, Landroid/content/pm/PackageUserState;->notLaunched:Z

    iput-boolean v1, p0, Landroid/content/pm/PackageUserState;->notLaunched:Z

    iget-boolean v1, p1, Landroid/content/pm/PackageUserState;->hidden:Z

    iput-boolean v1, p0, Landroid/content/pm/PackageUserState;->hidden:Z

    iget-boolean v1, p1, Landroid/content/pm/PackageUserState;->suspended:Z

    iput-boolean v1, p0, Landroid/content/pm/PackageUserState;->suspended:Z

    iget-boolean v1, p1, Landroid/content/pm/PackageUserState;->instantApp:Z

    iput-boolean v1, p0, Landroid/content/pm/PackageUserState;->instantApp:Z

    iget v1, p1, Landroid/content/pm/PackageUserState;->enabled:I

    iput v1, p0, Landroid/content/pm/PackageUserState;->enabled:I

    iget-object v1, p1, Landroid/content/pm/PackageUserState;->lastDisableAppCaller:Ljava/lang/String;

    iput-object v1, p0, Landroid/content/pm/PackageUserState;->lastDisableAppCaller:Ljava/lang/String;

    iget v1, p1, Landroid/content/pm/PackageUserState;->domainVerificationStatus:I

    iput v1, p0, Landroid/content/pm/PackageUserState;->domainVerificationStatus:I

    iget v1, p1, Landroid/content/pm/PackageUserState;->appLinkGeneration:I

    iput v1, p0, Landroid/content/pm/PackageUserState;->appLinkGeneration:I

    iget v1, p1, Landroid/content/pm/PackageUserState;->categoryHint:I

    iput v1, p0, Landroid/content/pm/PackageUserState;->categoryHint:I

    iget v1, p1, Landroid/content/pm/PackageUserState;->installReason:I

    iput v1, p0, Landroid/content/pm/PackageUserState;->installReason:I

    iget-object v1, p1, Landroid/content/pm/PackageUserState;->disabledComponents:Landroid/util/ArraySet;

    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->cloneOrNull(Landroid/util/ArraySet;)Landroid/util/ArraySet;

    move-result-object v1

    iput-object v1, p0, Landroid/content/pm/PackageUserState;->disabledComponents:Landroid/util/ArraySet;

    iget-object v1, p1, Landroid/content/pm/PackageUserState;->enabledComponents:Landroid/util/ArraySet;

    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->cloneOrNull(Landroid/util/ArraySet;)Landroid/util/ArraySet;

    move-result-object v1

    iput-object v1, p0, Landroid/content/pm/PackageUserState;->enabledComponents:Landroid/util/ArraySet;

    iget-object v1, p1, Landroid/content/pm/PackageUserState;->overlayPaths:[Ljava/lang/String;

    if-nez v1, :cond_0

    :goto_0
    iput-object v0, p0, Landroid/content/pm/PackageUserState;->overlayPaths:[Ljava/lang/String;

    return-void

    :cond_0
    iget-object v0, p1, Landroid/content/pm/PackageUserState;->overlayPaths:[Ljava/lang/String;

    iget-object v1, p1, Landroid/content/pm/PackageUserState;->overlayPaths:[Ljava/lang/String;

    array-length v1, v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v6, 0x0

    instance-of v2, p1, Landroid/content/pm/PackageUserState;

    if-nez v2, :cond_0

    return v6

    :cond_0
    move-object v1, p1

    check-cast v1, Landroid/content/pm/PackageUserState;

    iget-wide v2, p0, Landroid/content/pm/PackageUserState;->ceDataInode:J

    iget-wide v4, v1, Landroid/content/pm/PackageUserState;->ceDataInode:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    return v6

    :cond_1
    iget-boolean v2, p0, Landroid/content/pm/PackageUserState;->installed:Z

    iget-boolean v3, v1, Landroid/content/pm/PackageUserState;->installed:Z

    if-eq v2, v3, :cond_2

    return v6

    :cond_2
    iget-boolean v2, p0, Landroid/content/pm/PackageUserState;->stopped:Z

    iget-boolean v3, v1, Landroid/content/pm/PackageUserState;->stopped:Z

    if-eq v2, v3, :cond_3

    return v6

    :cond_3
    iget-boolean v2, p0, Landroid/content/pm/PackageUserState;->notLaunched:Z

    iget-boolean v3, v1, Landroid/content/pm/PackageUserState;->notLaunched:Z

    if-eq v2, v3, :cond_4

    return v6

    :cond_4
    iget-boolean v2, p0, Landroid/content/pm/PackageUserState;->hidden:Z

    iget-boolean v3, v1, Landroid/content/pm/PackageUserState;->hidden:Z

    if-eq v2, v3, :cond_5

    return v6

    :cond_5
    iget-boolean v2, p0, Landroid/content/pm/PackageUserState;->suspended:Z

    iget-boolean v3, v1, Landroid/content/pm/PackageUserState;->suspended:Z

    if-eq v2, v3, :cond_6

    return v6

    :cond_6
    iget-boolean v2, p0, Landroid/content/pm/PackageUserState;->instantApp:Z

    iget-boolean v3, v1, Landroid/content/pm/PackageUserState;->instantApp:Z

    if-eq v2, v3, :cond_7

    return v6

    :cond_7
    iget v2, p0, Landroid/content/pm/PackageUserState;->enabled:I

    iget v3, v1, Landroid/content/pm/PackageUserState;->enabled:I

    if-eq v2, v3, :cond_8

    return v6

    :cond_8
    iget-object v2, p0, Landroid/content/pm/PackageUserState;->lastDisableAppCaller:Ljava/lang/String;

    if-nez v2, :cond_a

    iget-object v2, v1, Landroid/content/pm/PackageUserState;->lastDisableAppCaller:Ljava/lang/String;

    if-eqz v2, :cond_a

    :cond_9
    return v6

    :cond_a
    iget-object v2, p0, Landroid/content/pm/PackageUserState;->lastDisableAppCaller:Ljava/lang/String;

    if-eqz v2, :cond_b

    iget-object v2, p0, Landroid/content/pm/PackageUserState;->lastDisableAppCaller:Ljava/lang/String;

    iget-object v3, v1, Landroid/content/pm/PackageUserState;->lastDisableAppCaller:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-nez v2, :cond_9

    :cond_b
    iget v2, p0, Landroid/content/pm/PackageUserState;->domainVerificationStatus:I

    iget v3, v1, Landroid/content/pm/PackageUserState;->domainVerificationStatus:I

    if-eq v2, v3, :cond_c

    return v6

    :cond_c
    iget v2, p0, Landroid/content/pm/PackageUserState;->appLinkGeneration:I

    iget v3, v1, Landroid/content/pm/PackageUserState;->appLinkGeneration:I

    if-eq v2, v3, :cond_d

    return v6

    :cond_d
    iget v2, p0, Landroid/content/pm/PackageUserState;->categoryHint:I

    iget v3, v1, Landroid/content/pm/PackageUserState;->categoryHint:I

    if-eq v2, v3, :cond_e

    return v6

    :cond_e
    iget v2, p0, Landroid/content/pm/PackageUserState;->installReason:I

    iget v3, v1, Landroid/content/pm/PackageUserState;->installReason:I

    if-eq v2, v3, :cond_f

    return v6

    :cond_f
    iget-object v2, p0, Landroid/content/pm/PackageUserState;->disabledComponents:Landroid/util/ArraySet;

    if-nez v2, :cond_11

    iget-object v2, v1, Landroid/content/pm/PackageUserState;->disabledComponents:Landroid/util/ArraySet;

    if-eqz v2, :cond_11

    :cond_10
    return v6

    :cond_11
    iget-object v2, p0, Landroid/content/pm/PackageUserState;->disabledComponents:Landroid/util/ArraySet;

    if-eqz v2, :cond_12

    iget-object v2, v1, Landroid/content/pm/PackageUserState;->disabledComponents:Landroid/util/ArraySet;

    if-eqz v2, :cond_10

    :cond_12
    iget-object v2, p0, Landroid/content/pm/PackageUserState;->disabledComponents:Landroid/util/ArraySet;

    if-eqz v2, :cond_15

    iget-object v2, p0, Landroid/content/pm/PackageUserState;->disabledComponents:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v2

    iget-object v3, v1, Landroid/content/pm/PackageUserState;->disabledComponents:Landroid/util/ArraySet;

    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    move-result v3

    if-eq v2, v3, :cond_13

    return v6

    :cond_13
    iget-object v2, p0, Landroid/content/pm/PackageUserState;->disabledComponents:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    :goto_0
    if-ltz v0, :cond_15

    iget-object v2, v1, Landroid/content/pm/PackageUserState;->disabledComponents:Landroid/util/ArraySet;

    iget-object v3, p0, Landroid/content/pm/PackageUserState;->disabledComponents:Landroid/util/ArraySet;

    invoke-virtual {v3, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_14

    return v6

    :cond_14
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_15
    iget-object v2, p0, Landroid/content/pm/PackageUserState;->enabledComponents:Landroid/util/ArraySet;

    if-nez v2, :cond_17

    iget-object v2, v1, Landroid/content/pm/PackageUserState;->enabledComponents:Landroid/util/ArraySet;

    if-eqz v2, :cond_17

    :cond_16
    return v6

    :cond_17
    iget-object v2, p0, Landroid/content/pm/PackageUserState;->enabledComponents:Landroid/util/ArraySet;

    if-eqz v2, :cond_18

    iget-object v2, v1, Landroid/content/pm/PackageUserState;->enabledComponents:Landroid/util/ArraySet;

    if-eqz v2, :cond_16

    :cond_18
    iget-object v2, p0, Landroid/content/pm/PackageUserState;->enabledComponents:Landroid/util/ArraySet;

    if-eqz v2, :cond_1b

    iget-object v2, p0, Landroid/content/pm/PackageUserState;->enabledComponents:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v2

    iget-object v3, v1, Landroid/content/pm/PackageUserState;->enabledComponents:Landroid/util/ArraySet;

    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    move-result v3

    if-eq v2, v3, :cond_19

    return v6

    :cond_19
    iget-object v2, p0, Landroid/content/pm/PackageUserState;->enabledComponents:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    :goto_1
    if-ltz v0, :cond_1b

    iget-object v2, v1, Landroid/content/pm/PackageUserState;->enabledComponents:Landroid/util/ArraySet;

    iget-object v3, p0, Landroid/content/pm/PackageUserState;->enabledComponents:Landroid/util/ArraySet;

    invoke-virtual {v3, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1a

    return v6

    :cond_1a
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_1b
    const/4 v2, 0x1

    return v2
.end method

.method public isAvailable(I)Z
    .locals 5

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/high16 v4, 0x400000

    and-int/2addr v4, p1

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    :goto_0
    and-int/lit16 v4, p1, 0x2000

    if-eqz v4, :cond_1

    const/4 v1, 0x1

    :goto_1
    if-nez v0, :cond_2

    iget-boolean v4, p0, Landroid/content/pm/PackageUserState;->installed:Z

    if-eqz v4, :cond_4

    iget-boolean v3, p0, Landroid/content/pm/PackageUserState;->hidden:Z

    if-eqz v3, :cond_3

    :goto_2
    return v1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    move v1, v2

    goto :goto_2

    :cond_3
    move v1, v2

    goto :goto_2

    :cond_4
    move v1, v3

    goto :goto_2
.end method

.method public isEnabled(Landroid/content/pm/ComponentInfo;I)Z
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    and-int/lit16 v0, p2, 0x200

    if-eqz v0, :cond_0

    return v3

    :cond_0
    iget v0, p0, Landroid/content/pm/PackageUserState;->enabled:I

    packed-switch v0, :pswitch_data_0

    :cond_1
    :pswitch_0
    iget-object v0, p0, Landroid/content/pm/PackageUserState;->enabledComponents:Landroid/util/ArraySet;

    iget-object v1, p1, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/internal/util/ArrayUtils;->contains(Ljava/util/Collection;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    return v3

    :pswitch_1
    return v2

    :pswitch_2
    const v0, 0x8000

    and-int/2addr v0, p2

    if-nez v0, :cond_2

    return v2

    :cond_2
    :pswitch_3
    iget-object v0, p1, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-boolean v0, v0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-nez v0, :cond_1

    return v2

    :cond_3
    iget-object v0, p0, Landroid/content/pm/PackageUserState;->disabledComponents:Landroid/util/ArraySet;

    iget-object v1, p1, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/internal/util/ArrayUtils;->contains(Ljava/util/Collection;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    return v2

    :cond_4
    iget-boolean v0, p1, Landroid/content/pm/ComponentInfo;->enabled:Z

    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public isMatch(Landroid/content/pm/ComponentInfo;I)Z
    .locals 6

    const/4 v4, 0x0

    iget-object v5, p1, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v5}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result v0

    const v5, 0x402000

    and-int/2addr v5, p2

    if-eqz v5, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {p0, p2}, Landroid/content/pm/PackageUserState;->isAvailable(I)Z

    move-result v5

    if-nez v5, :cond_2

    if-eqz v0, :cond_1

    :goto_1
    xor-int/lit8 v5, v1, 0x1

    if-eqz v5, :cond_2

    return v4

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    move v1, v4

    goto :goto_1

    :cond_2
    invoke-virtual {p0, p1, p2}, Landroid/content/pm/PackageUserState;->isEnabled(Landroid/content/pm/ComponentInfo;I)Z

    move-result v5

    if-nez v5, :cond_3

    return v4

    :cond_3
    const/high16 v5, 0x100000

    and-int/2addr v5, p2

    if-eqz v5, :cond_4

    if-nez v0, :cond_4

    return v4

    :cond_4
    const/high16 v4, 0x40000

    and-int/2addr v4, p2

    if-eqz v4, :cond_5

    iget-boolean v4, p1, Landroid/content/pm/ComponentInfo;->directBootAware:Z

    xor-int/lit8 v3, v4, 0x1

    :goto_2
    const/high16 v4, 0x80000

    and-int/2addr v4, p2

    if-eqz v4, :cond_6

    iget-boolean v2, p1, Landroid/content/pm/ComponentInfo;->directBootAware:Z

    :goto_3
    if-nez v3, :cond_7

    :goto_4
    return v2

    :cond_5
    const/4 v3, 0x0

    goto :goto_2

    :cond_6
    const/4 v2, 0x0

    goto :goto_3

    :cond_7
    const/4 v2, 0x1

    goto :goto_4
.end method
