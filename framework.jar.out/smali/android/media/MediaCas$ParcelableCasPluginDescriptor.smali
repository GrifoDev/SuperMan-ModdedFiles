.class Landroid/media/MediaCas$ParcelableCasPluginDescriptor;
.super Landroid/media/MediaCas$PluginDescriptor;
.source "MediaCas.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaCas;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ParcelableCasPluginDescriptor"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/MediaCas$ParcelableCasPluginDescriptor$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/media/MediaCas$ParcelableCasPluginDescriptor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/media/MediaCas$ParcelableCasPluginDescriptor$1;

    invoke-direct {v0}, Landroid/media/MediaCas$ParcelableCasPluginDescriptor$1;-><init>()V

    sput-object v0, Landroid/media/MediaCas$ParcelableCasPluginDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/media/MediaCas$PluginDescriptor;-><init>(ILjava/lang/String;)V

    return-void
.end method

.method synthetic constructor <init>(ILjava/lang/String;Landroid/media/MediaCas$ParcelableCasPluginDescriptor;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/media/MediaCas$ParcelableCasPluginDescriptor;-><init>(ILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    const-string/jumbo v0, "MediaCas"

    const-string/jumbo v1, "ParcelableCasPluginDescriptor.writeToParcel shouldn\'t be called!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
