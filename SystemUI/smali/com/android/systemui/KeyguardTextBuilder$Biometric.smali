.class final enum Lcom/android/systemui/KeyguardTextBuilder$Biometric;
.super Ljava/lang/Enum;
.source "KeyguardTextBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/KeyguardTextBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "Biometric"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/systemui/KeyguardTextBuilder$Biometric;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/systemui/KeyguardTextBuilder$Biometric;

.field public static final enum Face:Lcom/android/systemui/KeyguardTextBuilder$Biometric;

.field public static final enum FaceFingerprint:Lcom/android/systemui/KeyguardTextBuilder$Biometric;

.field public static final enum Fingerprint:Lcom/android/systemui/KeyguardTextBuilder$Biometric;

.field public static final enum Intelligent:Lcom/android/systemui/KeyguardTextBuilder$Biometric;

.field public static final enum Iris:Lcom/android/systemui/KeyguardTextBuilder$Biometric;

.field public static final enum MultiBiometrics:Lcom/android/systemui/KeyguardTextBuilder$Biometric;


# instance fields
.field private mBiometric:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v0, Lcom/android/systemui/KeyguardTextBuilder$Biometric;

    const-string/jumbo v1, "Fingerprint"

    const-string/jumbo v2, "fingerprint"

    invoke-direct {v0, v1, v4, v2}, Lcom/android/systemui/KeyguardTextBuilder$Biometric;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/android/systemui/KeyguardTextBuilder$Biometric;->Fingerprint:Lcom/android/systemui/KeyguardTextBuilder$Biometric;

    new-instance v0, Lcom/android/systemui/KeyguardTextBuilder$Biometric;

    const-string/jumbo v1, "Iris"

    const-string/jumbo v2, "iris"

    invoke-direct {v0, v1, v5, v2}, Lcom/android/systemui/KeyguardTextBuilder$Biometric;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/android/systemui/KeyguardTextBuilder$Biometric;->Iris:Lcom/android/systemui/KeyguardTextBuilder$Biometric;

    new-instance v0, Lcom/android/systemui/KeyguardTextBuilder$Biometric;

    const-string/jumbo v1, "Face"

    const-string/jumbo v2, "face"

    invoke-direct {v0, v1, v6, v2}, Lcom/android/systemui/KeyguardTextBuilder$Biometric;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/android/systemui/KeyguardTextBuilder$Biometric;->Face:Lcom/android/systemui/KeyguardTextBuilder$Biometric;

    new-instance v0, Lcom/android/systemui/KeyguardTextBuilder$Biometric;

    const-string/jumbo v1, "Intelligent"

    const-string/jumbo v2, "intelligent"

    invoke-direct {v0, v1, v7, v2}, Lcom/android/systemui/KeyguardTextBuilder$Biometric;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/android/systemui/KeyguardTextBuilder$Biometric;->Intelligent:Lcom/android/systemui/KeyguardTextBuilder$Biometric;

    new-instance v0, Lcom/android/systemui/KeyguardTextBuilder$Biometric;

    const-string/jumbo v1, "MultiBiometrics"

    const-string/jumbo v2, "multi"

    invoke-direct {v0, v1, v8, v2}, Lcom/android/systemui/KeyguardTextBuilder$Biometric;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/android/systemui/KeyguardTextBuilder$Biometric;->MultiBiometrics:Lcom/android/systemui/KeyguardTextBuilder$Biometric;

    new-instance v0, Lcom/android/systemui/KeyguardTextBuilder$Biometric;

    const-string/jumbo v1, "FaceFingerprint"

    const-string/jumbo v2, "facefingerprint"

    const/4 v3, 0x5

    invoke-direct {v0, v1, v3, v2}, Lcom/android/systemui/KeyguardTextBuilder$Biometric;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/android/systemui/KeyguardTextBuilder$Biometric;->FaceFingerprint:Lcom/android/systemui/KeyguardTextBuilder$Biometric;

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/android/systemui/KeyguardTextBuilder$Biometric;

    sget-object v1, Lcom/android/systemui/KeyguardTextBuilder$Biometric;->Fingerprint:Lcom/android/systemui/KeyguardTextBuilder$Biometric;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/systemui/KeyguardTextBuilder$Biometric;->Iris:Lcom/android/systemui/KeyguardTextBuilder$Biometric;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/systemui/KeyguardTextBuilder$Biometric;->Face:Lcom/android/systemui/KeyguardTextBuilder$Biometric;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/systemui/KeyguardTextBuilder$Biometric;->Intelligent:Lcom/android/systemui/KeyguardTextBuilder$Biometric;

    aput-object v1, v0, v7

    sget-object v1, Lcom/android/systemui/KeyguardTextBuilder$Biometric;->MultiBiometrics:Lcom/android/systemui/KeyguardTextBuilder$Biometric;

    aput-object v1, v0, v8

    sget-object v1, Lcom/android/systemui/KeyguardTextBuilder$Biometric;->FaceFingerprint:Lcom/android/systemui/KeyguardTextBuilder$Biometric;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/systemui/KeyguardTextBuilder$Biometric;->$VALUES:[Lcom/android/systemui/KeyguardTextBuilder$Biometric;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/android/systemui/KeyguardTextBuilder$Biometric;->mBiometric:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/systemui/KeyguardTextBuilder$Biometric;
    .locals 1

    const-class v0, Lcom/android/systemui/KeyguardTextBuilder$Biometric;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/KeyguardTextBuilder$Biometric;

    return-object v0
.end method

.method public static values()[Lcom/android/systemui/KeyguardTextBuilder$Biometric;
    .locals 1

    sget-object v0, Lcom/android/systemui/KeyguardTextBuilder$Biometric;->$VALUES:[Lcom/android/systemui/KeyguardTextBuilder$Biometric;

    return-object v0
.end method


# virtual methods
.method getType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/KeyguardTextBuilder$Biometric;->mBiometric:Ljava/lang/String;

    return-object v0
.end method
