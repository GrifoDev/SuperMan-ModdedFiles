.class final enum Lcom/android/systemui/KeyguardTextBuilder$Security;
.super Ljava/lang/Enum;
.source "KeyguardTextBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/KeyguardTextBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "Security"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/systemui/KeyguardTextBuilder$Security;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/systemui/KeyguardTextBuilder$Security;

.field public static final enum Direction:Lcom/android/systemui/KeyguardTextBuilder$Security;

.field public static final enum PIN:Lcom/android/systemui/KeyguardTextBuilder$Security;

.field public static final enum Password:Lcom/android/systemui/KeyguardTextBuilder$Security;

.field public static final enum Pattern:Lcom/android/systemui/KeyguardTextBuilder$Security;


# instance fields
.field private mSecurity:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/android/systemui/KeyguardTextBuilder$Security;

    const-string/jumbo v1, "PIN"

    const-string/jumbo v2, "pin"

    invoke-direct {v0, v1, v3, v2}, Lcom/android/systemui/KeyguardTextBuilder$Security;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/android/systemui/KeyguardTextBuilder$Security;->PIN:Lcom/android/systemui/KeyguardTextBuilder$Security;

    new-instance v0, Lcom/android/systemui/KeyguardTextBuilder$Security;

    const-string/jumbo v1, "Pattern"

    const-string/jumbo v2, "pattern"

    invoke-direct {v0, v1, v4, v2}, Lcom/android/systemui/KeyguardTextBuilder$Security;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/android/systemui/KeyguardTextBuilder$Security;->Pattern:Lcom/android/systemui/KeyguardTextBuilder$Security;

    new-instance v0, Lcom/android/systemui/KeyguardTextBuilder$Security;

    const-string/jumbo v1, "Password"

    const-string/jumbo v2, "password"

    invoke-direct {v0, v1, v5, v2}, Lcom/android/systemui/KeyguardTextBuilder$Security;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/android/systemui/KeyguardTextBuilder$Security;->Password:Lcom/android/systemui/KeyguardTextBuilder$Security;

    new-instance v0, Lcom/android/systemui/KeyguardTextBuilder$Security;

    const-string/jumbo v1, "Direction"

    const-string/jumbo v2, "direction"

    invoke-direct {v0, v1, v6, v2}, Lcom/android/systemui/KeyguardTextBuilder$Security;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/android/systemui/KeyguardTextBuilder$Security;->Direction:Lcom/android/systemui/KeyguardTextBuilder$Security;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/systemui/KeyguardTextBuilder$Security;

    sget-object v1, Lcom/android/systemui/KeyguardTextBuilder$Security;->PIN:Lcom/android/systemui/KeyguardTextBuilder$Security;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/systemui/KeyguardTextBuilder$Security;->Pattern:Lcom/android/systemui/KeyguardTextBuilder$Security;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/systemui/KeyguardTextBuilder$Security;->Password:Lcom/android/systemui/KeyguardTextBuilder$Security;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/systemui/KeyguardTextBuilder$Security;->Direction:Lcom/android/systemui/KeyguardTextBuilder$Security;

    aput-object v1, v0, v6

    sput-object v0, Lcom/android/systemui/KeyguardTextBuilder$Security;->$VALUES:[Lcom/android/systemui/KeyguardTextBuilder$Security;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/android/systemui/KeyguardTextBuilder$Security;->mSecurity:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/systemui/KeyguardTextBuilder$Security;
    .locals 1

    const-class v0, Lcom/android/systemui/KeyguardTextBuilder$Security;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/KeyguardTextBuilder$Security;

    return-object v0
.end method

.method public static values()[Lcom/android/systemui/KeyguardTextBuilder$Security;
    .locals 1

    sget-object v0, Lcom/android/systemui/KeyguardTextBuilder$Security;->$VALUES:[Lcom/android/systemui/KeyguardTextBuilder$Security;

    return-object v0
.end method


# virtual methods
.method getType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/KeyguardTextBuilder$Security;->mSecurity:Ljava/lang/String;

    return-object v0
.end method
