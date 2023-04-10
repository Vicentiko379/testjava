<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">


	<xsl:key match="//Setting[Property]" name="property" use="SettingItem[@name='id']/@value"/>


	<xsl:template match="*">
		<xsl:copy>
			<xsl:copy-of select="@*"/>
			<xsl:apply-templates/>
		</xsl:copy>
		qweqwe
	</xsl:template>

	<xsl:template match="Container">aaaaaa
		<xsl:copy>vq val
			<xsl:copy-of select="@*"/>
			<xsl:variable name="id">
				<xsl:value-of select="@id"/>
			</xsl:variable>
			<xsl:for-each select="key('property',$id)/Property">
				<xsl:attribute name="{@nameqq}a">
					<xsl:value-of select="@values"/>
				</xsl:attribute>
			</xsl:for-each>
			<xsl:apply-templates/>
		</xsl:copy>
	</xsl:template>
</xsl:stylesheet>
