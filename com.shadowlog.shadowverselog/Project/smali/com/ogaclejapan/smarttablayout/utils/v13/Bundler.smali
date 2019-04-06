.class public Lcom/ogaclejapan/smarttablayout/utils/v13/Bundler;
.super Ljava/lang/Object;
.source "Bundler.java"


# instance fields
.field private final bundle:Landroid/os/Bundle;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/ogaclejapan/smarttablayout/utils/v13/Bundler;-><init>(Landroid/os/Bundle;)V

    .line 39
    return-void
.end method

.method private constructor <init>(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "b"    # Landroid/os/Bundle;

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    if-nez p1, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    :goto_0
    iput-object v0, p0, Lcom/ogaclejapan/smarttablayout/utils/v13/Bundler;->bundle:Landroid/os/Bundle;

    .line 43
    return-void

    .line 42
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, p1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public static of(Landroid/os/Bundle;)Lcom/ogaclejapan/smarttablayout/utils/v13/Bundler;
    .locals 1
    .param p0, "b"    # Landroid/os/Bundle;

    .prologue
    .line 52
    new-instance v0, Lcom/ogaclejapan/smarttablayout/utils/v13/Bundler;

    invoke-direct {v0, p0}, Lcom/ogaclejapan/smarttablayout/utils/v13/Bundler;-><init>(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method public get()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 472
    iget-object v0, p0, Lcom/ogaclejapan/smarttablayout/utils/v13/Bundler;->bundle:Landroid/os/Bundle;

    return-object v0
.end method

.method public into(Landroid/app/Fragment;)Landroid/app/Fragment;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/app/Fragment;",
            ">(TT;)TT;"
        }
    .end annotation

    .prologue
    .line 482
    .local p1, "fragment":Landroid/app/Fragment;, "TT;"
    invoke-virtual {p0}, Lcom/ogaclejapan/smarttablayout/utils/v13/Bundler;->get()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 483
    return-object p1
.end method

.method public putAll(Landroid/os/Bundle;)Lcom/ogaclejapan/smarttablayout/utils/v13/Bundler;
    .locals 1
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/ogaclejapan/smarttablayout/utils/v13/Bundler;->bundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 62
    return-object p0
.end method

.method public putBinder(Ljava/lang/String;Landroid/os/IBinder;)Lcom/ogaclejapan/smarttablayout/utils/v13/Bundler;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Landroid/os/IBinder;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x12
    .end annotation

    .prologue
    .line 342
    iget-object v0, p0, Lcom/ogaclejapan/smarttablayout/utils/v13/Bundler;->bundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 343
    return-object p0
.end method

.method public putBoolean(Ljava/lang/String;Z)Lcom/ogaclejapan/smarttablayout/utils/v13/Bundler;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Z

    .prologue
    .line 354
    iget-object v0, p0, Lcom/ogaclejapan/smarttablayout/utils/v13/Bundler;->bundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 355
    return-object p0
.end method

.method public putBooleanArray(Ljava/lang/String;[Z)Lcom/ogaclejapan/smarttablayout/utils/v13/Bundler;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # [Z

    .prologue
    .line 414
    iget-object v0, p0, Lcom/ogaclejapan/smarttablayout/utils/v13/Bundler;->bundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putBooleanArray(Ljava/lang/String;[Z)V

    .line 415
    return-object p0
.end method

.method public putBundle(Ljava/lang/String;Landroid/os/Bundle;)Lcom/ogaclejapan/smarttablayout/utils/v13/Bundler;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Landroid/os/Bundle;

    .prologue
    .line 322
    iget-object v0, p0, Lcom/ogaclejapan/smarttablayout/utils/v13/Bundler;->bundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 323
    return-object p0
.end method

.method public putByte(Ljava/lang/String;B)Lcom/ogaclejapan/smarttablayout/utils/v13/Bundler;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # B

    .prologue
    .line 73
    iget-object v0, p0, Lcom/ogaclejapan/smarttablayout/utils/v13/Bundler;->bundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putByte(Ljava/lang/String;B)V

    .line 74
    return-object p0
.end method

.method public putByteArray(Ljava/lang/String;[B)Lcom/ogaclejapan/smarttablayout/utils/v13/Bundler;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # [B

    .prologue
    .line 261
    iget-object v0, p0, Lcom/ogaclejapan/smarttablayout/utils/v13/Bundler;->bundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 262
    return-object p0
.end method

.method public putChar(Ljava/lang/String;C)Lcom/ogaclejapan/smarttablayout/utils/v13/Bundler;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # C

    .prologue
    .line 85
    iget-object v0, p0, Lcom/ogaclejapan/smarttablayout/utils/v13/Bundler;->bundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putChar(Ljava/lang/String;C)V

    .line 86
    return-object p0
.end method

.method public putCharArray(Ljava/lang/String;[C)Lcom/ogaclejapan/smarttablayout/utils/v13/Bundler;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # [C

    .prologue
    .line 285
    iget-object v0, p0, Lcom/ogaclejapan/smarttablayout/utils/v13/Bundler;->bundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putCharArray(Ljava/lang/String;[C)V

    .line 286
    return-object p0
.end method

.method public putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)Lcom/ogaclejapan/smarttablayout/utils/v13/Bundler;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/CharSequence;

    .prologue
    .line 121
    iget-object v0, p0, Lcom/ogaclejapan/smarttablayout/utils/v13/Bundler;->bundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 122
    return-object p0
.end method

.method public putCharSequenceArray(Ljava/lang/String;[Ljava/lang/CharSequence;)Lcom/ogaclejapan/smarttablayout/utils/v13/Bundler;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # [Ljava/lang/CharSequence;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x8
    .end annotation

    .prologue
    .line 310
    iget-object v0, p0, Lcom/ogaclejapan/smarttablayout/utils/v13/Bundler;->bundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putCharSequenceArray(Ljava/lang/String;[Ljava/lang/CharSequence;)V

    .line 311
    return-object p0
.end method

.method public putCharSequenceArrayList(Ljava/lang/String;Ljava/util/ArrayList;)Lcom/ogaclejapan/smarttablayout/utils/v13/Bundler;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x8
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;)",
            "Lcom/ogaclejapan/smarttablayout/utils/v13/Bundler;"
        }
    .end annotation

    .prologue
    .line 237
    .local p2, "value":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    iget-object v0, p0, Lcom/ogaclejapan/smarttablayout/utils/v13/Bundler;->bundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putCharSequenceArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 238
    return-object p0
.end method

.method public putDouble(Ljava/lang/String;D)Lcom/ogaclejapan/smarttablayout/utils/v13/Bundler;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # D

    .prologue
    .line 390
    iget-object v0, p0, Lcom/ogaclejapan/smarttablayout/utils/v13/Bundler;->bundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 391
    return-object p0
.end method

.method public putDoubleArray(Ljava/lang/String;[D)Lcom/ogaclejapan/smarttablayout/utils/v13/Bundler;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # [D

    .prologue
    .line 450
    iget-object v0, p0, Lcom/ogaclejapan/smarttablayout/utils/v13/Bundler;->bundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putDoubleArray(Ljava/lang/String;[D)V

    .line 451
    return-object p0
.end method

.method public putFloat(Ljava/lang/String;F)Lcom/ogaclejapan/smarttablayout/utils/v13/Bundler;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # F

    .prologue
    .line 109
    iget-object v0, p0, Lcom/ogaclejapan/smarttablayout/utils/v13/Bundler;->bundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 110
    return-object p0
.end method

.method public putFloatArray(Ljava/lang/String;[F)Lcom/ogaclejapan/smarttablayout/utils/v13/Bundler;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # [F

    .prologue
    .line 297
    iget-object v0, p0, Lcom/ogaclejapan/smarttablayout/utils/v13/Bundler;->bundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putFloatArray(Ljava/lang/String;[F)V

    .line 298
    return-object p0
.end method

.method public putInt(Ljava/lang/String;I)Lcom/ogaclejapan/smarttablayout/utils/v13/Bundler;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 366
    iget-object v0, p0, Lcom/ogaclejapan/smarttablayout/utils/v13/Bundler;->bundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 367
    return-object p0
.end method

.method public putIntArray(Ljava/lang/String;[I)Lcom/ogaclejapan/smarttablayout/utils/v13/Bundler;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # [I

    .prologue
    .line 426
    iget-object v0, p0, Lcom/ogaclejapan/smarttablayout/utils/v13/Bundler;->bundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 427
    return-object p0
.end method

.method public putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)Lcom/ogaclejapan/smarttablayout/utils/v13/Bundler;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/ogaclejapan/smarttablayout/utils/v13/Bundler;"
        }
    .end annotation

    .prologue
    .line 212
    .local p2, "value":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/ogaclejapan/smarttablayout/utils/v13/Bundler;->bundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 213
    return-object p0
.end method

.method public putLong(Ljava/lang/String;J)Lcom/ogaclejapan/smarttablayout/utils/v13/Bundler;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # J

    .prologue
    .line 378
    iget-object v0, p0, Lcom/ogaclejapan/smarttablayout/utils/v13/Bundler;->bundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 379
    return-object p0
.end method

.method public putLongArray(Ljava/lang/String;[J)Lcom/ogaclejapan/smarttablayout/utils/v13/Bundler;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # [J

    .prologue
    .line 438
    iget-object v0, p0, Lcom/ogaclejapan/smarttablayout/utils/v13/Bundler;->bundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    .line 439
    return-object p0
.end method

.method public putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)Lcom/ogaclejapan/smarttablayout/utils/v13/Bundler;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Landroid/os/Parcelable;

    .prologue
    .line 133
    iget-object v0, p0, Lcom/ogaclejapan/smarttablayout/utils/v13/Bundler;->bundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 134
    return-object p0
.end method

.method public putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)Lcom/ogaclejapan/smarttablayout/utils/v13/Bundler;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # [Landroid/os/Parcelable;

    .prologue
    .line 172
    iget-object v0, p0, Lcom/ogaclejapan/smarttablayout/utils/v13/Bundler;->bundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 173
    return-object p0
.end method

.method public putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)Lcom/ogaclejapan/smarttablayout/utils/v13/Bundler;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<+",
            "Landroid/os/Parcelable;",
            ">;)",
            "Lcom/ogaclejapan/smarttablayout/utils/v13/Bundler;"
        }
    .end annotation

    .prologue
    .line 186
    .local p2, "value":Ljava/util/ArrayList;, "Ljava/util/ArrayList<+Landroid/os/Parcelable;>;"
    iget-object v0, p0, Lcom/ogaclejapan/smarttablayout/utils/v13/Bundler;->bundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 187
    return-object p0
.end method

.method public putSerializable(Ljava/lang/String;Ljava/io/Serializable;)Lcom/ogaclejapan/smarttablayout/utils/v13/Bundler;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/io/Serializable;

    .prologue
    .line 249
    iget-object v0, p0, Lcom/ogaclejapan/smarttablayout/utils/v13/Bundler;->bundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 250
    return-object p0
.end method

.method public putShort(Ljava/lang/String;S)Lcom/ogaclejapan/smarttablayout/utils/v13/Bundler;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # S

    .prologue
    .line 97
    iget-object v0, p0, Lcom/ogaclejapan/smarttablayout/utils/v13/Bundler;->bundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putShort(Ljava/lang/String;S)V

    .line 98
    return-object p0
.end method

.method public putShortArray(Ljava/lang/String;[S)Lcom/ogaclejapan/smarttablayout/utils/v13/Bundler;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # [S

    .prologue
    .line 273
    iget-object v0, p0, Lcom/ogaclejapan/smarttablayout/utils/v13/Bundler;->bundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putShortArray(Ljava/lang/String;[S)V

    .line 274
    return-object p0
.end method

.method public putSize(Ljava/lang/String;Landroid/util/Size;)Lcom/ogaclejapan/smarttablayout/utils/v13/Bundler;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Landroid/util/Size;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    .line 146
    iget-object v0, p0, Lcom/ogaclejapan/smarttablayout/utils/v13/Bundler;->bundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putSize(Ljava/lang/String;Landroid/util/Size;)V

    .line 147
    return-object p0
.end method

.method public putSizeF(Ljava/lang/String;Landroid/util/SizeF;)Lcom/ogaclejapan/smarttablayout/utils/v13/Bundler;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Landroid/util/SizeF;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    .line 159
    iget-object v0, p0, Lcom/ogaclejapan/smarttablayout/utils/v13/Bundler;->bundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putSizeF(Ljava/lang/String;Landroid/util/SizeF;)V

    .line 160
    return-object p0
.end method

.method public putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)Lcom/ogaclejapan/smarttablayout/utils/v13/Bundler;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/util/SparseArray",
            "<+",
            "Landroid/os/Parcelable;",
            ">;)",
            "Lcom/ogaclejapan/smarttablayout/utils/v13/Bundler;"
        }
    .end annotation

    .prologue
    .line 200
    .local p2, "value":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/Parcelable;>;"
    iget-object v0, p0, Lcom/ogaclejapan/smarttablayout/utils/v13/Bundler;->bundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    .line 201
    return-object p0
.end method

.method public putString(Ljava/lang/String;Ljava/lang/String;)Lcom/ogaclejapan/smarttablayout/utils/v13/Bundler;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 402
    iget-object v0, p0, Lcom/ogaclejapan/smarttablayout/utils/v13/Bundler;->bundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 403
    return-object p0
.end method

.method public putStringArray(Ljava/lang/String;[Ljava/lang/String;)Lcom/ogaclejapan/smarttablayout/utils/v13/Bundler;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # [Ljava/lang/String;

    .prologue
    .line 462
    iget-object v0, p0, Lcom/ogaclejapan/smarttablayout/utils/v13/Bundler;->bundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 463
    return-object p0
.end method

.method public putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)Lcom/ogaclejapan/smarttablayout/utils/v13/Bundler;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/ogaclejapan/smarttablayout/utils/v13/Bundler;"
        }
    .end annotation

    .prologue
    .line 224
    .local p2, "value":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/ogaclejapan/smarttablayout/utils/v13/Bundler;->bundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 225
    return-object p0
.end method
