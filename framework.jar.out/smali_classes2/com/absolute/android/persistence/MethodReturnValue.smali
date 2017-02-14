.class public Lcom/absolute/android/persistence/MethodReturnValue;
.super Ljava/lang/Object;
.source "MethodReturnValue.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/absolute/android/persistence/MethodReturnValue;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private m_apkOrJarPath:Ljava/lang/String;

.field private m_returnValue:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/absolute/android/persistence/MethodReturnValue$1;

    invoke-direct {v0}, Lcom/absolute/android/persistence/MethodReturnValue$1;-><init>()V

    sput-object v0, Lcom/absolute/android/persistence/MethodReturnValue;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/absolute/android/persistence/MethodReturnValue;->m_apkOrJarPath:Ljava/lang/String;

    iget-object v0, p0, Lcom/absolute/android/persistence/MethodReturnValue;->m_apkOrJarPath:Ljava/lang/String;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "MethodReturnValue apkOrJarPath is not null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/absolute/android/persistence/MethodReturnValue;->m_returnValue:Ljava/lang/Object;

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/absolute/android/persistence/MethodReturnValue$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/absolute/android/persistence/MethodReturnValue;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/absolute/android/persistence/MethodReturnValue;->m_returnValue:Ljava/lang/Object;

    iput-object p2, p0, Lcom/absolute/android/persistence/MethodReturnValue;->m_apkOrJarPath:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getApkOrJarPath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/absolute/android/persistence/MethodReturnValue;->m_apkOrJarPath:Ljava/lang/String;

    return-object v0
.end method

.method public getReturnValue()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/absolute/android/persistence/MethodReturnValue;->m_returnValue:Ljava/lang/Object;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Lcom/absolute/android/persistence/MethodReturnValue;->m_apkOrJarPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/absolute/android/persistence/MethodReturnValue;->m_returnValue:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    return-void
.end method
