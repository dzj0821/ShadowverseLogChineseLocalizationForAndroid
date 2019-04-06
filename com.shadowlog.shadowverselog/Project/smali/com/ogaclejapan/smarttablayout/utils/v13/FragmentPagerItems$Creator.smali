.class public Lcom/ogaclejapan/smarttablayout/utils/v13/FragmentPagerItems$Creator;
.super Ljava/lang/Object;
.source "FragmentPagerItems.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ogaclejapan/smarttablayout/utils/v13/FragmentPagerItems;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Creator"
.end annotation


# instance fields
.field private final items:Lcom/ogaclejapan/smarttablayout/utils/v13/FragmentPagerItems;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Lcom/ogaclejapan/smarttablayout/utils/v13/FragmentPagerItems;

    invoke-direct {v0, p1}, Lcom/ogaclejapan/smarttablayout/utils/v13/FragmentPagerItems;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ogaclejapan/smarttablayout/utils/v13/FragmentPagerItems$Creator;->items:Lcom/ogaclejapan/smarttablayout/utils/v13/FragmentPagerItems;

    .line 41
    return-void
.end method


# virtual methods
.method public add(IFLjava/lang/Class;)Lcom/ogaclejapan/smarttablayout/utils/v13/FragmentPagerItems$Creator;
    .locals 1
    .param p1, "title"    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param
    .param p2, "width"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IF",
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Fragment;",
            ">;)",
            "Lcom/ogaclejapan/smarttablayout/utils/v13/FragmentPagerItems$Creator;"
        }
    .end annotation

    .prologue
    .line 52
    .local p3, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/app/Fragment;>;"
    iget-object v0, p0, Lcom/ogaclejapan/smarttablayout/utils/v13/FragmentPagerItems$Creator;->items:Lcom/ogaclejapan/smarttablayout/utils/v13/FragmentPagerItems;

    invoke-virtual {v0}, Lcom/ogaclejapan/smarttablayout/utils/v13/FragmentPagerItems;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2, p3}, Lcom/ogaclejapan/smarttablayout/utils/v13/FragmentPagerItem;->of(Ljava/lang/CharSequence;FLjava/lang/Class;)Lcom/ogaclejapan/smarttablayout/utils/v13/FragmentPagerItem;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ogaclejapan/smarttablayout/utils/v13/FragmentPagerItems$Creator;->add(Lcom/ogaclejapan/smarttablayout/utils/v13/FragmentPagerItem;)Lcom/ogaclejapan/smarttablayout/utils/v13/FragmentPagerItems$Creator;

    move-result-object v0

    return-object v0
.end method

.method public add(IFLjava/lang/Class;Landroid/os/Bundle;)Lcom/ogaclejapan/smarttablayout/utils/v13/FragmentPagerItems$Creator;
    .locals 1
    .param p1, "title"    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param
    .param p2, "width"    # F
    .param p4, "args"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IF",
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Fragment;",
            ">;",
            "Landroid/os/Bundle;",
            ")",
            "Lcom/ogaclejapan/smarttablayout/utils/v13/FragmentPagerItems$Creator;"
        }
    .end annotation

    .prologue
    .line 57
    .local p3, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/app/Fragment;>;"
    iget-object v0, p0, Lcom/ogaclejapan/smarttablayout/utils/v13/FragmentPagerItems$Creator;->items:Lcom/ogaclejapan/smarttablayout/utils/v13/FragmentPagerItems;

    invoke-virtual {v0}, Lcom/ogaclejapan/smarttablayout/utils/v13/FragmentPagerItems;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2, p3, p4}, Lcom/ogaclejapan/smarttablayout/utils/v13/FragmentPagerItem;->of(Ljava/lang/CharSequence;FLjava/lang/Class;Landroid/os/Bundle;)Lcom/ogaclejapan/smarttablayout/utils/v13/FragmentPagerItem;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ogaclejapan/smarttablayout/utils/v13/FragmentPagerItems$Creator;->add(Lcom/ogaclejapan/smarttablayout/utils/v13/FragmentPagerItem;)Lcom/ogaclejapan/smarttablayout/utils/v13/FragmentPagerItems$Creator;

    move-result-object v0

    return-object v0
.end method

.method public add(ILjava/lang/Class;)Lcom/ogaclejapan/smarttablayout/utils/v13/FragmentPagerItems$Creator;
    .locals 1
    .param p1, "title"    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Fragment;",
            ">;)",
            "Lcom/ogaclejapan/smarttablayout/utils/v13/FragmentPagerItems$Creator;"
        }
    .end annotation

    .prologue
    .line 44
    .local p2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/app/Fragment;>;"
    iget-object v0, p0, Lcom/ogaclejapan/smarttablayout/utils/v13/FragmentPagerItems$Creator;->items:Lcom/ogaclejapan/smarttablayout/utils/v13/FragmentPagerItems;

    invoke-virtual {v0}, Lcom/ogaclejapan/smarttablayout/utils/v13/FragmentPagerItems;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/ogaclejapan/smarttablayout/utils/v13/FragmentPagerItem;->of(Ljava/lang/CharSequence;Ljava/lang/Class;)Lcom/ogaclejapan/smarttablayout/utils/v13/FragmentPagerItem;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ogaclejapan/smarttablayout/utils/v13/FragmentPagerItems$Creator;->add(Lcom/ogaclejapan/smarttablayout/utils/v13/FragmentPagerItem;)Lcom/ogaclejapan/smarttablayout/utils/v13/FragmentPagerItems$Creator;

    move-result-object v0

    return-object v0
.end method

.method public add(ILjava/lang/Class;Landroid/os/Bundle;)Lcom/ogaclejapan/smarttablayout/utils/v13/FragmentPagerItems$Creator;
    .locals 1
    .param p1, "title"    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param
    .param p3, "args"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Fragment;",
            ">;",
            "Landroid/os/Bundle;",
            ")",
            "Lcom/ogaclejapan/smarttablayout/utils/v13/FragmentPagerItems$Creator;"
        }
    .end annotation

    .prologue
    .line 48
    .local p2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/app/Fragment;>;"
    iget-object v0, p0, Lcom/ogaclejapan/smarttablayout/utils/v13/FragmentPagerItems$Creator;->items:Lcom/ogaclejapan/smarttablayout/utils/v13/FragmentPagerItems;

    invoke-virtual {v0}, Lcom/ogaclejapan/smarttablayout/utils/v13/FragmentPagerItems;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2, p3}, Lcom/ogaclejapan/smarttablayout/utils/v13/FragmentPagerItem;->of(Ljava/lang/CharSequence;Ljava/lang/Class;Landroid/os/Bundle;)Lcom/ogaclejapan/smarttablayout/utils/v13/FragmentPagerItem;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ogaclejapan/smarttablayout/utils/v13/FragmentPagerItems$Creator;->add(Lcom/ogaclejapan/smarttablayout/utils/v13/FragmentPagerItem;)Lcom/ogaclejapan/smarttablayout/utils/v13/FragmentPagerItems$Creator;

    move-result-object v0

    return-object v0
.end method

.method public add(Lcom/ogaclejapan/smarttablayout/utils/v13/FragmentPagerItem;)Lcom/ogaclejapan/smarttablayout/utils/v13/FragmentPagerItems$Creator;
    .locals 1
    .param p1, "item"    # Lcom/ogaclejapan/smarttablayout/utils/v13/FragmentPagerItem;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/ogaclejapan/smarttablayout/utils/v13/FragmentPagerItems$Creator;->items:Lcom/ogaclejapan/smarttablayout/utils/v13/FragmentPagerItems;

    invoke-virtual {v0, p1}, Lcom/ogaclejapan/smarttablayout/utils/v13/FragmentPagerItems;->add(Ljava/lang/Object;)Z

    .line 70
    return-object p0
.end method

.method public add(Ljava/lang/CharSequence;Ljava/lang/Class;)Lcom/ogaclejapan/smarttablayout/utils/v13/FragmentPagerItems$Creator;
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Fragment;",
            ">;)",
            "Lcom/ogaclejapan/smarttablayout/utils/v13/FragmentPagerItems$Creator;"
        }
    .end annotation

    .prologue
    .line 61
    .local p2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/app/Fragment;>;"
    invoke-static {p1, p2}, Lcom/ogaclejapan/smarttablayout/utils/v13/FragmentPagerItem;->of(Ljava/lang/CharSequence;Ljava/lang/Class;)Lcom/ogaclejapan/smarttablayout/utils/v13/FragmentPagerItem;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ogaclejapan/smarttablayout/utils/v13/FragmentPagerItems$Creator;->add(Lcom/ogaclejapan/smarttablayout/utils/v13/FragmentPagerItem;)Lcom/ogaclejapan/smarttablayout/utils/v13/FragmentPagerItems$Creator;

    move-result-object v0

    return-object v0
.end method

.method public add(Ljava/lang/CharSequence;Ljava/lang/Class;Landroid/os/Bundle;)Lcom/ogaclejapan/smarttablayout/utils/v13/FragmentPagerItems$Creator;
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;
    .param p3, "args"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Fragment;",
            ">;",
            "Landroid/os/Bundle;",
            ")",
            "Lcom/ogaclejapan/smarttablayout/utils/v13/FragmentPagerItems$Creator;"
        }
    .end annotation

    .prologue
    .line 65
    .local p2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/app/Fragment;>;"
    invoke-static {p1, p2, p3}, Lcom/ogaclejapan/smarttablayout/utils/v13/FragmentPagerItem;->of(Ljava/lang/CharSequence;Ljava/lang/Class;Landroid/os/Bundle;)Lcom/ogaclejapan/smarttablayout/utils/v13/FragmentPagerItem;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ogaclejapan/smarttablayout/utils/v13/FragmentPagerItems$Creator;->add(Lcom/ogaclejapan/smarttablayout/utils/v13/FragmentPagerItem;)Lcom/ogaclejapan/smarttablayout/utils/v13/FragmentPagerItems$Creator;

    move-result-object v0

    return-object v0
.end method

.method public create()Lcom/ogaclejapan/smarttablayout/utils/v13/FragmentPagerItems;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/ogaclejapan/smarttablayout/utils/v13/FragmentPagerItems$Creator;->items:Lcom/ogaclejapan/smarttablayout/utils/v13/FragmentPagerItems;

    return-object v0
.end method
