.class public Lcom/absolute/android/persistence/MethodSpec;
.super Ljava/lang/Object;
.source "MethodSpec.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/absolute/android/persistence/MethodSpec;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private m_apkOrJarPath:Ljava/lang/String;

.field private m_argTypes:[Ljava/lang/Class;

.field private m_argValues:[Ljava/lang/Object;

.field private m_className:Ljava/lang/String;

.field private m_methodName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/absolute/android/persistence/MethodSpec$1;

    invoke-direct {v0}, Lcom/absolute/android/persistence/MethodSpec$1;-><init>()V

    sput-object v0, Lcom/absolute/android/persistence/MethodSpec;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/absolute/android/persistence/MethodSpec;->m_apkOrJarPath:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/absolute/android/persistence/MethodSpec;->m_className:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/absolute/android/persistence/MethodSpec;->m_methodName:Ljava/lang/String;

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readArray(Ljava/lang/ClassLoader;)[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/absolute/android/persistence/MethodSpec;->m_argValues:[Ljava/lang/Object;

    invoke-direct {p0}, Lcom/absolute/android/persistence/MethodSpec;->loadArgumentTypes()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/absolute/android/persistence/MethodSpec$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/absolute/android/persistence/MethodSpec;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    if-eqz p2, :cond_1

    if-eqz p3, :cond_2

    iput-object p1, p0, Lcom/absolute/android/persistence/MethodSpec;->m_apkOrJarPath:Ljava/lang/String;

    iput-object p2, p0, Lcom/absolute/android/persistence/MethodSpec;->m_className:Ljava/lang/String;

    iput-object p3, p0, Lcom/absolute/android/persistence/MethodSpec;->m_methodName:Ljava/lang/String;

    iput-object p4, p0, Lcom/absolute/android/persistence/MethodSpec;->m_argValues:[Ljava/lang/Object;

    invoke-direct {p0}, Lcom/absolute/android/persistence/MethodSpec;->loadArgumentTypes()V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "apk or jar path is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "class name is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "method name is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private loadArgumentTypes()V
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/absolute/android/persistence/MethodSpec;->m_argValues:[Ljava/lang/Object;

    if-nez v0, :cond_1

    iput-object v1, p0, Lcom/absolute/android/persistence/MethodSpec;->m_argTypes:[Ljava/lang/Class;

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/absolute/android/persistence/MethodSpec;->m_argValues:[Ljava/lang/Object;

    array-length v0, v0

    new-array v0, v0, [Ljava/lang/Class;

    iput-object v0, p0, Lcom/absolute/android/persistence/MethodSpec;->m_argTypes:[Ljava/lang/Class;

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/absolute/android/persistence/MethodSpec;->m_argValues:[Ljava/lang/Object;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/absolute/android/persistence/MethodSpec;->m_argTypes:[Ljava/lang/Class;

    iget-object v2, p0, Lcom/absolute/android/persistence/MethodSpec;->m_argValues:[Ljava/lang/Object;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getApkOrJarPath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/absolute/android/persistence/MethodSpec;->m_apkOrJarPath:Ljava/lang/String;

    return-object v0
.end method

.method public getArgTypes()[Ljava/lang/Class;
    .locals 1

    iget-object v0, p0, Lcom/absolute/android/persistence/MethodSpec;->m_argTypes:[Ljava/lang/Class;

    return-object v0
.end method

.method public getArgValues()[Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/absolute/android/persistence/MethodSpec;->m_argValues:[Ljava/lang/Object;

    return-object v0
.end method

.method public getClassName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/absolute/android/persistence/MethodSpec;->m_className:Ljava/lang/String;

    return-object v0
.end method

.method public getMethodName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/absolute/android/persistence/MethodSpec;->m_methodName:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Lcom/absolute/android/persistence/MethodSpec;->m_apkOrJarPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/absolute/android/persistence/MethodSpec;->m_className:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/absolute/android/persistence/MethodSpec;->m_methodName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/absolute/android/persistence/MethodSpec;->m_argValues:[Ljava/lang/Object;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeArray([Ljava/lang/Object;)V

    return-void
.end method
