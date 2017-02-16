.class public Landroid/content/pm/PermissionGroupInfo;
.super Landroid/content/pm/PackageItemInfo;
.source "PermissionGroupInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/pm/PermissionGroupInfo$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/content/pm/PermissionGroupInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final FLAG_PERSONAL_INFO:I = 0x1


# instance fields
.field public descriptionRes:I

.field public flags:I

.field public nonLocalizedDescription:Ljava/lang/CharSequence;

.field public priority:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 115
    new-instance v0, Landroid/content/pm/PermissionGroupInfo$1;

    invoke-direct {v0}, Landroid/content/pm/PermissionGroupInfo$1;-><init>()V

    .line 114
    sput-object v0, Landroid/content/pm/PermissionGroupInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 28
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Landroid/content/pm/PackageItemInfo;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/pm/PermissionGroupInfo;)V
    .locals 1
    .param p1, "orig"    # Landroid/content/pm/PermissionGroupInfo;

    .prologue
    .line 65
    invoke-direct {p0, p1}, Landroid/content/pm/PackageItemInfo;-><init>(Landroid/content/pm/PackageItemInfo;)V

    .line 66
    iget v0, p1, Landroid/content/pm/PermissionGroupInfo;->descriptionRes:I

    iput v0, p0, Landroid/content/pm/PermissionGroupInfo;->descriptionRes:I

    .line 67
    iget-object v0, p1, Landroid/content/pm/PermissionGroupInfo;->nonLocalizedDescription:Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/content/pm/PermissionGroupInfo;->nonLocalizedDescription:Ljava/lang/CharSequence;

    .line 68
    iget v0, p1, Landroid/content/pm/PermissionGroupInfo;->flags:I

    iput v0, p0, Landroid/content/pm/PermissionGroupInfo;->flags:I

    .line 69
    iget v0, p1, Landroid/content/pm/PermissionGroupInfo;->priority:I

    iput v0, p0, Landroid/content/pm/PermissionGroupInfo;->priority:I

    .line 64
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 125
    invoke-direct {p0, p1}, Landroid/content/pm/PackageItemInfo;-><init>(Landroid/os/Parcel;)V

    .line 126
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/PermissionGroupInfo;->descriptionRes:I

    .line 127
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/content/pm/PermissionGroupInfo;->nonLocalizedDescription:Ljava/lang/CharSequence;

    .line 128
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/PermissionGroupInfo;->flags:I

    .line 129
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/PermissionGroupInfo;->priority:I

    .line 124
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/content/pm/PermissionGroupInfo;)V
    .locals 0
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    invoke-direct {p0, p1}, Landroid/content/pm/PermissionGroupInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 103
    const/4 v0, 0x0

    return v0
.end method

.method public loadDescription(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;
    .locals 4
    .param p1, "pm"    # Landroid/content/pm/PackageManager;

    .prologue
    const/4 v3, 0x0

    .line 84
    iget-object v1, p0, Landroid/content/pm/PermissionGroupInfo;->nonLocalizedDescription:Ljava/lang/CharSequence;

    if-eqz v1, :cond_0

    .line 85
    iget-object v1, p0, Landroid/content/pm/PermissionGroupInfo;->nonLocalizedDescription:Ljava/lang/CharSequence;

    return-object v1

    .line 87
    :cond_0
    iget v1, p0, Landroid/content/pm/PermissionGroupInfo;->descriptionRes:I

    if-eqz v1, :cond_1

    .line 88
    iget-object v1, p0, Landroid/content/pm/PermissionGroupInfo;->packageName:Ljava/lang/String;

    iget v2, p0, Landroid/content/pm/PermissionGroupInfo;->descriptionRes:I

    invoke-virtual {p1, v1, v2, v3}, Landroid/content/pm/PackageManager;->getText(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 89
    .local v0, "label":Ljava/lang/CharSequence;
    if-eqz v0, :cond_1

    .line 90
    return-object v0

    .line 93
    .end local v0    # "label":Ljava/lang/CharSequence;
    :cond_1
    return-object v3
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "PermissionGroupInfo{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 98
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    .line 97
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 99
    const-string/jumbo v1, " "

    .line 97
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 99
    iget-object v1, p0, Landroid/content/pm/PermissionGroupInfo;->name:Ljava/lang/String;

    .line 97
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 99
    const-string/jumbo v1, " flgs=0x"

    .line 97
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 99
    iget v1, p0, Landroid/content/pm/PermissionGroupInfo;->flags:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    .line 97
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 99
    const-string/jumbo v1, "}"

    .line 97
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "parcelableFlags"    # I

    .prologue
    .line 107
    invoke-super {p0, p1, p2}, Landroid/content/pm/PackageItemInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 108
    iget v0, p0, Landroid/content/pm/PermissionGroupInfo;->descriptionRes:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 109
    iget-object v0, p0, Landroid/content/pm/PermissionGroupInfo;->nonLocalizedDescription:Ljava/lang/CharSequence;

    invoke-static {v0, p1, p2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 110
    iget v0, p0, Landroid/content/pm/PermissionGroupInfo;->flags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 111
    iget v0, p0, Landroid/content/pm/PermissionGroupInfo;->priority:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 106
    return-void
.end method
