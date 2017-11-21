.class public final enum Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$Stage;
.super Ljava/lang/Enum;
.source "FingerprintPassword.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401c
    name = "Stage"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$Stage;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$Stage;

.field public static final enum ConfirmWrong:Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$Stage;

.field public static final enum Introduction:Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$Stage;

.field public static final enum NeedToConfirm:Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$Stage;


# instance fields
.field public final alphaHint:I

.field public final betaHint:I

.field public final buttonText:I


# direct methods
.method static constructor <clinit>()V
    .locals 12

    const v11, 0x7f0b0709

    const v6, 0x7f0b0708

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$Stage;

    const-string/jumbo v1, "Introduction"

    const v3, 0x7f0b0691

    const v4, 0x7f0b11c7

    const v5, 0x7f0b070f

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$Stage;-><init>(Ljava/lang/String;IIII)V

    sput-object v0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$Stage;->Introduction:Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$Stage;

    new-instance v3, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$Stage;

    const-string/jumbo v4, "NeedToConfirm"

    const v7, 0x7f0b11d2

    move v5, v9

    move v8, v6

    invoke-direct/range {v3 .. v8}, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$Stage;-><init>(Ljava/lang/String;IIII)V

    sput-object v3, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$Stage;->NeedToConfirm:Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$Stage;

    new-instance v3, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$Stage;

    const-string/jumbo v4, "ConfirmWrong"

    const v7, 0x7f0b11c7

    move v5, v10

    move v6, v11

    move v8, v11

    invoke-direct/range {v3 .. v8}, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$Stage;-><init>(Ljava/lang/String;IIII)V

    sput-object v3, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$Stage;->ConfirmWrong:Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$Stage;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$Stage;

    sget-object v1, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$Stage;->Introduction:Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$Stage;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$Stage;->NeedToConfirm:Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$Stage;

    aput-object v1, v0, v9

    sget-object v1, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$Stage;->ConfirmWrong:Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$Stage;

    aput-object v1, v0, v10

    sput-object v0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$Stage;->$VALUES:[Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$Stage;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIII)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$Stage;->alphaHint:I

    iput p4, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$Stage;->buttonText:I

    iput p5, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$Stage;->betaHint:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$Stage;
    .locals 1

    const-class v0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$Stage;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$Stage;

    return-object v0
.end method

.method public static values()[Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$Stage;
    .locals 1

    sget-object v0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$Stage;->$VALUES:[Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$Stage;

    return-object v0
.end method
