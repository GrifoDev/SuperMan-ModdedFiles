.class Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraint;
.super Ljava/lang/Object;
.source "DisabledAlgorithmConstraints.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/security/util/DisabledAlgorithmConstraints;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "KeySizeConstraint"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraint$Operator;
    }
.end annotation


# static fields
.field private static final synthetic -sun-security-util-DisabledAlgorithmConstraints$KeySizeConstraint$OperatorSwitchesValues:[I


# instance fields
.field private maxSize:I

.field private minSize:I

.field private prohibitedSize:I


# direct methods
.method private static synthetic -getsun-security-util-DisabledAlgorithmConstraints$KeySizeConstraint$OperatorSwitchesValues()[I
    .locals 3

    sget-object v0, Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraint;->-sun-security-util-DisabledAlgorithmConstraints$KeySizeConstraint$OperatorSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraint;->-sun-security-util-DisabledAlgorithmConstraints$KeySizeConstraint$OperatorSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraint$Operator;->values()[Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraint$Operator;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraint$Operator;->EQ:Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraint$Operator;

    invoke-virtual {v1}, Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraint$Operator;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_5

    :goto_0
    :try_start_1
    sget-object v1, Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraint$Operator;->GE:Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraint$Operator;

    invoke-virtual {v1}, Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraint$Operator;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_4

    :goto_1
    :try_start_2
    sget-object v1, Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraint$Operator;->GT:Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraint$Operator;

    invoke-virtual {v1}, Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraint$Operator;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_3

    :goto_2
    :try_start_3
    sget-object v1, Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraint$Operator;->LE:Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraint$Operator;

    invoke-virtual {v1}, Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraint$Operator;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_2

    :goto_3
    :try_start_4
    sget-object v1, Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraint$Operator;->LT:Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraint$Operator;

    invoke-virtual {v1}, Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraint$Operator;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_1

    :goto_4
    :try_start_5
    sget-object v1, Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraint$Operator;->NE:Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraint$Operator;

    invoke-virtual {v1}, Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraint$Operator;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_0

    :goto_5
    sput-object v0, Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraint;->-sun-security-util-DisabledAlgorithmConstraints$KeySizeConstraint$OperatorSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_5

    :catch_1
    move-exception v1

    goto :goto_4

    :catch_2
    move-exception v1

    goto :goto_3

    :catch_3
    move-exception v1

    goto :goto_2

    :catch_4
    move-exception v1

    goto :goto_1

    :catch_5
    move-exception v1

    goto :goto_0
.end method

.method public constructor <init>(Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraint$Operator;I)V
    .locals 5

    const/4 v4, -0x1

    const v3, 0x7fffffff

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v4, p0, Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraint;->prohibitedSize:I

    invoke-static {}, Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraint;->-getsun-security-util-DisabledAlgorithmConstraints$KeySizeConstraint$OperatorSwitchesValues()[I

    move-result-object v1

    invoke-virtual {p1}, Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraint$Operator;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    iput v3, p0, Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraint;->minSize:I

    iput v4, p0, Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraint;->maxSize:I

    :goto_0
    return-void

    :pswitch_0
    iput v0, p0, Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraint;->minSize:I

    iput v3, p0, Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraint;->maxSize:I

    iput p2, p0, Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraint;->prohibitedSize:I

    goto :goto_0

    :pswitch_1
    iput p2, p0, Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraint;->minSize:I

    iput p2, p0, Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraint;->maxSize:I

    goto :goto_0

    :pswitch_2
    iput p2, p0, Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraint;->minSize:I

    iput v3, p0, Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraint;->maxSize:I

    goto :goto_0

    :pswitch_3
    add-int/lit8 v0, p2, 0x1

    iput v0, p0, Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraint;->minSize:I

    iput v3, p0, Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraint;->maxSize:I

    goto :goto_0

    :pswitch_4
    iput v0, p0, Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraint;->minSize:I

    iput p2, p0, Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraint;->maxSize:I

    goto :goto_0

    :pswitch_5
    iput v0, p0, Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraint;->minSize:I

    const/4 v1, 0x1

    if-le p2, v1, :cond_0

    add-int/lit8 v0, p2, -0x1

    :cond_0
    iput v0, p0, Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraint;->maxSize:I

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public disables(Ljava/security/Key;)Z
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {p1}, Lsun/security/util/KeyUtil;->getKeySize(Ljava/security/Key;)I

    move-result v0

    if-nez v0, :cond_0

    return v1

    :cond_0
    if-lez v0, :cond_3

    iget v3, p0, Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraint;->minSize:I

    if-lt v0, v3, :cond_1

    iget v3, p0, Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraint;->maxSize:I

    if-le v0, v3, :cond_2

    :cond_1
    :goto_0
    return v1

    :cond_2
    iget v3, p0, Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraint;->prohibitedSize:I

    if-eq v3, v0, :cond_1

    move v1, v2

    goto :goto_0

    :cond_3
    return v2
.end method
