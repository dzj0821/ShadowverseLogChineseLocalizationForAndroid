.class public abstract Lcom/ogaclejapan/smarttablayout/utils/PagerItem;
.super Ljava/lang/Object;
.source "PagerItem.java"


# static fields
.field protected static final DEFAULT_WIDTH:F = 1.0f


# instance fields
.field private final title:Ljava/lang/CharSequence;

.field private final width:F


# direct methods
.method protected constructor <init>(Ljava/lang/CharSequence;F)V
    .locals 0
    .param p1, "title"    # Ljava/lang/CharSequence;
    .param p2, "width"    # F

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/ogaclejapan/smarttablayout/utils/PagerItem;->title:Ljava/lang/CharSequence;

    .line 27
    iput p2, p0, Lcom/ogaclejapan/smarttablayout/utils/PagerItem;->width:F

    .line 28
    return-void
.end method


# virtual methods
.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/ogaclejapan/smarttablayout/utils/PagerItem;->title:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getWidth()F
    .locals 1

    .prologue
    .line 35
    iget v0, p0, Lcom/ogaclejapan/smarttablayout/utils/PagerItem;->width:F

    return v0
.end method
