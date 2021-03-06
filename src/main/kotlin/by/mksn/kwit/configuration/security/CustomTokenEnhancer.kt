package by.mksn.kwit.configuration.security

import org.springframework.security.oauth2.common.OAuth2AccessToken
import org.springframework.security.oauth2.provider.OAuth2Authentication
import org.springframework.security.oauth2.provider.token.TokenEnhancer
import org.springframework.stereotype.Component

@Component
open class CustomTokenEnhancer : TokenEnhancer {

    override fun enhance(
            oAuth2AccessToken: OAuth2AccessToken,
            oAuth2Authentication: OAuth2Authentication): OAuth2AccessToken
            = oAuth2AccessToken
}