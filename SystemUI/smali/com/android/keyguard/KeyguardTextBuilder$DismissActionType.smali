.class final enum Lcom/android/keyguard/KeyguardTextBuilder$DismissActionType;
.super Ljava/lang/Enum;
.source "KeyguardTextBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardTextBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "DismissActionType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/keyguard/KeyguardTextBuilder$DismissActionType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/keyguard/KeyguardTextBuilder$DismissActionType;

.field public static final enum Active:Lcom/android/keyguard/KeyguardTextBuilder$DismissActionType;

.field public static final enum ShutDown:Lcom/android/keyguard/KeyguardTextBuilder$DismissActionType;


# instance fields
.field private mDismissType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/android/keyguard/KeyguardTextBuilder$DismissActionType;

    const-string/jumbo v1, "Active"

    const-string/jumbo v2, "active"

    invoke-direct {v0, v1, v3, v2}, Lcom/android/keyguard/KeyguardTextBuilder$DismissActionType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/android/keyguard/KeyguardTextBuilder$DismissActionType;->Active:Lcom/android/keyguard/KeyguardTextBuilder$DismissActionType;

    new-instance v0, Lcom/android/keyguard/KeyguardTextBuilder$DismissActionType;

    const-string/jumbo v1, "ShutDown"

    const-string/jumbo v2, "shutdown"

    invoke-direct {v0, v1, v4, v2}, Lcom/android/keyguard/KeyguardTextBuilder$DismissActionType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/android/keyguard/KeyguardTextBuilder$DismissActionType;->ShutDown:Lcom/android/keyguard/KeyguardTextBuilder$DismissActionType;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/android/keyguard/KeyguardTextBuilder$DismissActionType;

    sget-object v1, Lcom/android/keyguard/KeyguardTextBuilder$DismissActionType;->Active:Lcom/android/keyguard/KeyguardTextBuilder$DismissActionType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/keyguard/KeyguardTextBuilder$DismissActionType;->ShutDown:Lcom/android/keyguard/KeyguardTextBuilder$DismissActionType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/keyguard/KeyguardTextBuilder$DismissActionType;->$VALUES:[Lcom/android/keyguard/KeyguardTextBuilder$DismissActionType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/android/keyguard/KeyguardTextBuilder$DismissActionType;->mDismissType:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/keyguard/KeyguardTextBuilder$DismissActionType;
    .locals 1

    const-class v0, Lcom/android/keyguard/KeyguardTextBuilder$DismissActionType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardTextBuilder$DismissActionType;

    return-object v0
.end method

.method public static values()[Lcom/android/keyguard/KeyguardTextBuilder$DismissActionType;
    .locals 1

    sget-object v0, Lcom/android/keyguard/KeyguardTextBuilder$DismissActionType;->$VALUES:[Lcom/android/keyguard/KeyguardTextBuilder$DismissActionType;

    return-object v0
.end method


# virtual methods
.method getType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardTextBuilder$DismissActionType;->mDismissType:Ljava/lang/String;

    return-object v0
.end method
