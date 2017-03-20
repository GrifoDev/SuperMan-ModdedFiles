.class public final Lcom/android/contacts/commonbind/experiments/Flags;
.super Ljava/lang/Object;
.source "Flags.java"


# static fields
.field private static sInstance:Lcom/android/contacts/commonbind/experiments/Flags;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/contacts/commonbind/experiments/Flags;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 29
    sget-object v0, Lcom/android/contacts/commonbind/experiments/Flags;->sInstance:Lcom/android/contacts/commonbind/experiments/Flags;

    if-nez v0, :cond_0

    .line 30
    new-instance v0, Lcom/android/contacts/commonbind/experiments/Flags;

    invoke-direct {v0}, Lcom/android/contacts/commonbind/experiments/Flags;-><init>()V

    sput-object v0, Lcom/android/contacts/commonbind/experiments/Flags;->sInstance:Lcom/android/contacts/commonbind/experiments/Flags;

    .line 32
    :cond_0
    sget-object v0, Lcom/android/contacts/commonbind/experiments/Flags;->sInstance:Lcom/android/contacts/commonbind/experiments/Flags;

    return-object v0
.end method


# virtual methods
.method public getBoolean(Ljava/lang/String;Z)Z
    .locals 0
    .param p1, "flagName"    # Ljava/lang/String;
    .param p2, "defValue"    # Z

    .prologue
    .line 39
    return p2
.end method

.method public getBytes(Ljava/lang/String;[B)[B
    .locals 0
    .param p1, "flagName"    # Ljava/lang/String;
    .param p2, "defValue"    # [B

    .prologue
    .line 43
    return-object p2
.end method

.method public getDouble(Ljava/lang/String;D)D
    .locals 0
    .param p1, "flagName"    # Ljava/lang/String;
    .param p2, "defValue"    # D

    .prologue
    .line 47
    return-wide p2
.end method

.method public getInt(Ljava/lang/String;I)I
    .locals 0
    .param p1, "flagName"    # Ljava/lang/String;
    .param p2, "defValue"    # I

    .prologue
    .line 51
    return p2
.end method

.method public getLong(Ljava/lang/String;J)J
    .locals 0
    .param p1, "flagName"    # Ljava/lang/String;
    .param p2, "defValue"    # J

    .prologue
    .line 55
    return-wide p2
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p1, "flagName"    # Ljava/lang/String;
    .param p2, "defValue"    # Ljava/lang/String;

    .prologue
    .line 59
    return-object p2
.end method
