/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_putunsignbr_fd                                  :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: tbruha <tbruha@student.42.fr>              +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/08/07 16:35:22 by tbruha            #+#    #+#             */
/*   Updated: 2024/12/05 16:20:25 by tbruha           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

void	ft_putunsignbr_fd(unsigned int nb, int fd)
{
	char	nbr;

	if (nb > 9)
	{
		ft_putunsignbr_fd(nb / 10, fd);
		ft_putunsignbr_fd(nb % 10, fd);
	}
	else
	{
		nbr = nb + 48;
		write(fd, &nbr, 1);
	}
}
