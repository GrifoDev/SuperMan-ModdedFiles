.class public Lcom/yulore/sdk/ivr/util/FileUtil;
.super Ljava/lang/Object;
.source "FileUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getFileName(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 6

    const/4 v3, 0x0

    invoke-static {p0}, Lcom/yulore/sdk/ivr/util/FileUtil;->isDirectory(Ljava/io/File;)Z

    move-result v4

    if-nez v4, :cond_1

    move-object v1, v3

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_2

    array-length v4, v2

    if-lez v4, :cond_2

    array-length v5, v2

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v5, :cond_2

    aget-object v0, v2, v4

    invoke-static {v0, p1, p2, p3, p4}, Lcom/yulore/sdk/ivr/util/FileUtil;->matchIvrName(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    move-object v1, v3

    goto :goto_0
.end method

.method public static isDirectory(Ljava/io/File;)Z
    .locals 4

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    const-string v2, "YuloreIVRCommon"

    const-string v3, " the target path that used to store data files is not exist "

    invoke-static {v2, v3}, Lcom/yulore/android/common/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v1

    :catch_0
    move-exception v0

    const-string v2, "YuloreIVRCommon"

    const-string v3, " error msg : the target path that used to store data files is not exist "

    invoke-static {v2, v3}, Lcom/yulore/android/common/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static matchIvrName(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 9

    if-nez p0, :cond_0

    const/4 v4, 0x0

    :goto_0
    return-object v4

    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x0

    goto :goto_0

    :cond_1
    const-string v4, "YuloreIVR"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " match file "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/yulore/android/common/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    sput-object p1, Lcom/yulore/sdk/ivr/util/States$PHONE_STATE;->CALL_NUM:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string p2, "0"

    :cond_2
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string p3, "0"

    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_17

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".dat"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    const-string v4, "YuloreIVR"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " match successfully , type is <mt><num>.dat, the name of the file is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/yulore/android/common/util/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_0

    :cond_4
    const/4 v4, 0x0

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_17

    const-string v4, ".dat"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    const-string v4, "YuloreIVR"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " match successfully ,type is <num>.dat, the name of the file is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/yulore/android/common/util/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_0

    :cond_5
    const/4 v4, 0x0

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v4, v1

    const/4 v5, 0x1

    if-ne v4, v5, :cond_7

    const/4 v4, 0x0

    const/4 v5, 0x0

    aget-object v5, v1, v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    aget-object v7, v1, v7

    const-string v8, "."

    invoke-virtual {v7, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v4

    const/4 v4, 0x0

    aget-object v4, v1, v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x0

    aget-object v5, v1, v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v4, v5, :cond_7

    :cond_6
    const-string v4, "YuloreIVR"

    const-string v5, " match failed , is not completely numbner"

    invoke-static {v4, v5}, Lcom/yulore/android/common/util/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x0

    goto/16 :goto_0

    :cond_7
    const/4 v4, 0x0

    aget-object v4, v1, v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x0

    aget-object v5, v1, v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v4, v5, :cond_9

    :cond_8
    const-string v4, "YuloreIVR"

    const-string v5, " match failed , is not completely numbner"

    invoke-static {v4, v5}, Lcom/yulore/android/common/util/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x0

    goto/16 :goto_0

    :cond_9
    array-length v4, v1

    const/4 v5, 0x4

    if-ne v4, v5, :cond_12

    invoke-static {p4}, Lcom/yulore/sdk/ivr/util/Utility;->isOperator(I)Z

    move-result v4

    if-eqz v4, :cond_11

    const/4 v4, 0x3

    const/4 v5, 0x3

    aget-object v5, v1, v5

    const/4 v6, 0x0

    const/4 v7, 0x3

    aget-object v7, v1, v7

    const-string v8, "."

    invoke-virtual {v7, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v4

    const/4 v0, -0x1

    invoke-static {p1}, Lcom/yulore/sdk/ivr/util/Utility;->getTelOperator(Ljava/lang/String;)I

    move-result v3

    if-ne v3, p4, :cond_a

    const/4 v4, 0x3

    aget-object v4, v1, v4

    const-string v5, "0"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    const/4 v0, 0x0

    :cond_a
    if-eq v3, p4, :cond_b

    const/4 v4, 0x3

    aget-object v4, v1, v4

    const-string v5, "1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    const/4 v0, 0x1

    :cond_b
    const/4 v4, -0x1

    if-eq v0, v4, :cond_10

    const/4 v4, 0x1

    aget-object v4, v1, v4

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_c

    const/4 v4, 0x2

    aget-object v4, v1, v4

    invoke-virtual {v4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_c

    const/4 v4, 0x5

    sput v4, Lcom/yulore/sdk/ivr/listener/RequestIVRCallBackImp;->DIFFENT:I

    const/4 v4, 0x2

    sput v4, Lcom/yulore/sdk/ivr/util/Constants;->MATCHER:I

    const-string v4, "YuloreIVR"

    const-string v5, " match failed , is operator number but some params is empty "

    invoke-static {v4, v5}, Lcom/yulore/android/common/util/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x0

    goto/16 :goto_0

    :cond_c
    const/4 v4, 0x1

    aget-object v4, v1, v4

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    const/4 v4, 0x2

    aget-object v4, v1, v4

    invoke-virtual {v4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    const-string v4, "_"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".dat"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "YuloreIVR"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " match successfully , type is <num>_<mo>_<mt>_<op>.dat, the name of the file is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/yulore/android/common/util/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_0

    :cond_d
    const/4 v4, 0x1

    aget-object v4, v1, v4

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    const/4 v4, 0x4

    sput v4, Lcom/yulore/sdk/ivr/listener/RequestIVRCallBackImp;->DIFFENT:I

    const/4 v4, 0x2

    sput v4, Lcom/yulore/sdk/ivr/util/Constants;->MATCHER:I

    const-string v4, "YuloreIVR"

    const-string v5, " match failed , is operaotr number but param mtArea is wrong "

    invoke-static {v4, v5}, Lcom/yulore/android/common/util/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x0

    goto/16 :goto_0

    :cond_e
    const/4 v4, 0x1

    aget-object v4, v1, v4

    const-string v5, "0"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    const-string v4, "_0_"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".dat"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "YuloreIVR"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " match successfully , type is <num>_<mo>_<mt>_<op>.dat, the name of the file is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/yulore/android/common/util/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_0

    :cond_f
    const/4 v4, 0x3

    sput v4, Lcom/yulore/sdk/ivr/listener/RequestIVRCallBackImp;->DIFFENT:I

    const/4 v4, 0x2

    sput v4, Lcom/yulore/sdk/ivr/util/Constants;->MATCHER:I

    const-string v4, "YuloreIVR"

    const-string v5, " match failed , is operaotr number but param moArea is wrong "

    invoke-static {v4, v5}, Lcom/yulore/android/common/util/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x0

    goto/16 :goto_0

    :cond_10
    const/4 v4, 0x7

    sput v4, Lcom/yulore/sdk/ivr/listener/RequestIVRCallBackImp;->DIFFENT:I

    const/4 v4, 0x2

    sput v4, Lcom/yulore/sdk/ivr/util/Constants;->MATCHER:I

    const-string v4, "YuloreIVR"

    const-string v5, " match failed , is operaotr number but is not exists "

    invoke-static {v4, v5}, Lcom/yulore/android/common/util/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x0

    goto/16 :goto_0

    :cond_11
    const/16 v4, 0x8

    sput v4, Lcom/yulore/sdk/ivr/listener/RequestIVRCallBackImp;->DIFFENT:I

    const/4 v4, 0x2

    sput v4, Lcom/yulore/sdk/ivr/util/Constants;->MATCHER:I

    const-string v4, "YuloreIVR"

    const-string v5, " match failed , param operaotr number is wrong "

    invoke-static {v4, v5}, Lcom/yulore/android/common/util/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x0

    goto/16 :goto_0

    :cond_12
    const/4 v4, 0x2

    const/4 v5, 0x2

    aget-object v5, v1, v5

    const/4 v6, 0x0

    const/4 v7, 0x2

    aget-object v7, v1, v7

    const-string v8, "."

    invoke-virtual {v7, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v4

    const/4 v4, 0x1

    aget-object v4, v1, v4

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_13

    const/4 v4, 0x2

    aget-object v4, v1, v4

    invoke-virtual {v4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_13

    const/4 v4, 0x5

    sput v4, Lcom/yulore/sdk/ivr/listener/RequestIVRCallBackImp;->DIFFENT:I

    const/4 v4, 0x2

    sput v4, Lcom/yulore/sdk/ivr/util/Constants;->MATCHER:I

    const-string v4, "YuloreIVR"

    const-string v5, " match failed , param moArea and mtArea is wrong "

    invoke-static {v4, v5}, Lcom/yulore/android/common/util/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x0

    goto/16 :goto_0

    :cond_13
    const/4 v4, 0x1

    aget-object v4, v1, v4

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_14

    const/4 v4, 0x2

    aget-object v4, v1, v4

    invoke-virtual {v4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_14

    const-string v4, "_"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".dat"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "YuloreIVR"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " match successfully , type is <num>_<mo>_<mt>.dat, the name of the file is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/yulore/android/common/util/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_0

    :cond_14
    const/4 v4, 0x1

    aget-object v4, v1, v4

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_15

    const/4 v4, 0x4

    sput v4, Lcom/yulore/sdk/ivr/listener/RequestIVRCallBackImp;->DIFFENT:I

    const/4 v4, 0x2

    sput v4, Lcom/yulore/sdk/ivr/util/Constants;->MATCHER:I

    const-string v4, "YuloreIVR"

    const-string v5, " match failed , param mtArea is wrong "

    invoke-static {v4, v5}, Lcom/yulore/android/common/util/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x0

    goto/16 :goto_0

    :cond_15
    const/4 v4, 0x1

    aget-object v4, v1, v4

    const-string v5, "0"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_16

    const-string v4, "_0_"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".dat"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "YuloreIVR"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " match successfully , type is <num>_<mo>_<mt>.dat, the name of the file is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/yulore/android/common/util/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_0

    :cond_16
    const/4 v4, 0x3

    sput v4, Lcom/yulore/sdk/ivr/listener/RequestIVRCallBackImp;->DIFFENT:I

    const/4 v4, 0x2

    sput v4, Lcom/yulore/sdk/ivr/util/Constants;->MATCHER:I

    const-string v4, "YuloreIVR"

    const-string v5, " match failed , param moArea is wrong "

    invoke-static {v4, v5}, Lcom/yulore/android/common/util/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x0

    goto/16 :goto_0

    :cond_17
    const/4 v4, 0x0

    goto/16 :goto_0
.end method

.method public static need2Update(Landroid/content/Context;)Z
    .locals 7

    const/4 v3, 0x0

    const/4 v2, 0x1

    const-string v4, "YuloreIVR"

    const-string v5, " check for updates to the data "

    invoke-static {v4, v5}, Lcom/yulore/android/common/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p0, :cond_0

    :goto_0
    return v2

    :cond_0
    invoke-static {}, Lcom/yulore/sdk/ivr/engine/YuloreIvrEngine;->getInstance()Lcom/yulore/sdk/ivr/engine/YuloreIvrEngine;

    move-result-object v4

    invoke-virtual {v4}, Lcom/yulore/sdk/ivr/engine/YuloreIvrEngine;->getupdateNetworkType()Lcom/yulore/sdk/ivr/UpdateNetworkStrategy;

    move-result-object v1

    const-string v4, "YuloreIVR"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " Update strategy is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Lcom/yulore/sdk/ivr/UpdateNetworkStrategy;->getNetworkType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/yulore/android/common/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v4, Lcom/yulore/sdk/ivr/UpdateNetworkStrategy;->NEVER_UPDATE:Lcom/yulore/sdk/ivr/UpdateNetworkStrategy;

    invoke-virtual {v1, v4}, Lcom/yulore/sdk/ivr/UpdateNetworkStrategy;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v2, "YuloreIVR"

    const-string v4, "network type of update data is NEVER_UPDATE"

    invoke-static {v2, v4}, Lcom/yulore/android/common/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v3

    goto :goto_0

    :cond_1
    invoke-static {p0}, Lcom/yulore/android/common/http/NetUtils;->hasNetwork(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v2, "YuloreIVR"

    const-string v4, " network is not avalible "

    invoke-static {v2, v4}, Lcom/yulore/android/common/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v3

    goto :goto_0

    :cond_2
    sget-object v4, Lcom/yulore/sdk/ivr/UpdateNetworkStrategy;->UNLIMIT:Lcom/yulore/sdk/ivr/UpdateNetworkStrategy;

    invoke-virtual {v1, v4}, Lcom/yulore/sdk/ivr/UpdateNetworkStrategy;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v3, "YuloreIVR"

    const-string v4, " Update strategy is UNLIMIT "

    invoke-static {v3, v4}, Lcom/yulore/android/common/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    invoke-static {p0}, Lcom/yulore/android/common/util/AppUtils;->getNetWorkType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sget-object v4, Lcom/yulore/sdk/ivr/UpdateNetworkStrategy;->WIFI:Lcom/yulore/sdk/ivr/UpdateNetworkStrategy;

    invoke-virtual {v1, v4}, Lcom/yulore/sdk/ivr/UpdateNetworkStrategy;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    const-string v4, "w"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    const-string v3, "YuloreIVR"

    const-string v4, " network type is WIFI, Update strategy is WIFI "

    invoke-static {v3, v4}, Lcom/yulore/android/common/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    sget-object v4, Lcom/yulore/sdk/ivr/UpdateNetworkStrategy;->MOBILE_NETWORK:Lcom/yulore/sdk/ivr/UpdateNetworkStrategy;

    invoke-virtual {v1, v4}, Lcom/yulore/sdk/ivr/UpdateNetworkStrategy;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    const-string v3, "YuloreIVR"

    const-string v4, " Update strategy is MOBILE_NETWORK, it means always update "

    invoke-static {v3, v4}, Lcom/yulore/android/common/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    const-string v2, "YuloreIVR"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " Update strategy is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " , current network is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", do not require update "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/yulore/android/common/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v3

    goto/16 :goto_0
.end method
